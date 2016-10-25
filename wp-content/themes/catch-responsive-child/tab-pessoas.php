<?php


//argumentos para buscar os post com as pesssoas publicados
$args = array(
	"post_type"        => "mcm_people",
	"post_status"      => "publish",
	'orderby'          => 'date',
	'order'            => 'ASC',
);

// pega os posts
 $posts_array = get_posts($args); 
 
$posts = array();

  //carrega os ids dos posts validos
$doc = new DOMDocument();

//cria o objeto de pular linha
	$br = $doc->createElement('br');

	//cria o div principal 
	$divMain = $doc ->createElement('div');
	$divMain->setAttribute('id', 'main_tab_pessoas');
		$doc->appendChild($divMain);
		
		//cria o div da tab
		$divTab = $doc ->createElement('div');
		$divTab->setAttribute('id', 'TabsPessoas');
		$divMain->appendChild($divTab);
		
			//pega o elemento divMain e adiciona um ul
			$ul = $doc ->createElement('ul');
			$divTab->appendChild($ul);
			
				//para cada um dos posts selecionados 
				$i = 1;    
				
				foreach ( $posts_array as $pessoa ) {

					//cria o li
					$li = $doc->createElement('li');
					
					//apenda no ul
					$ul->appendChild($li);
					
						//apenda um a no ul com a href="#TabsPessoas-x
						$href = '#TabsPessoas-' . $i;
						$a = $doc->createElement('a');
						$a->setAttribute('href', $href);
						
						//cria o nó nome que a alça do tab
						$nome_comp = $pessoa->post_title;
						$nome = $doc->createTextNode($nome_comp);
						$a->appendChild($nome);
						$li->appendChild($a);												
					
					$i++;
				}
			
					//para cada um dos posts selecionados  cria a tab do conteudo
							$i = 1;  
							foreach ( $posts_array as $pessoa ) {
	
									//cria o div com  o id da pessoa
									$divConteudo = $doc->createElement('div');
									$divConteudo->setAttribute('id',  'TabsPessoas-' . $i);
									
									
									
									//aqui pega a imagem se tiver
									 if (has_post_thumbnail( $pessoa->ID ) ): $image = wp_get_attachment_image_src( get_post_thumbnail_id( $pessoa->ID), 'single-post-thumbnail' ); 
										$divFoto = $doc->createElement('div');
										$divFoto->setAttribute('class', 'foto_pessoa');
										$foto = $doc->createElement('img');
										$foto->setAttribute('src',  (string)$image[0]);
										$foto->setAttribute('alt', $pessoa->post_title );
										$divFoto->appendChild($foto);
									    $divConteudo->appendChild($divFoto);
									endif;
									
									//apendo o texto
									//para apendar o texto ou pagina como eu quero corretamente tem que chamar a funcão de metaposts
									$meta = get_post_meta((string) $pessoa->ID);
									
									$divDescricao = $doc->createElement('div');
									$divDescricao->setAttribute('class', 'desc_pessoa');
									$divDescricao->setAttribute('id', 'desc_Pessoa');
									
									//cria o label do cargo
									$lbCargo = $doc->createElement('label');
									$lbCargo->setAttribute('class', 'labelPessoa');
									$lbCargo->setAttribute('id', 'titlePessoa');
									$lbCargotxt = $doc->createTextNode("O que faz aqui: ");
									$lbCargo->appendChild($lbCargotxt);
									$divDescricao->appendChild($lbCargo);
									
									
									//cargo
									$pCargo = $doc->createElement('label');
									$pCargo->setAttribute('id', 'titlePessoa_content');
									$cargo = $doc->createTextNode( $meta['_title'] [0]);
									$pCargo->appendChild($cargo);
									$divDescricao->appendChild($pCargo);
									
									if (array_key_exists('_curriculum', $meta)) :
										//cria o label do Resume
										$lbResume = $doc->createElement('label');
										$lbResume->setAttribute('class', 'labelPessoa');
										$lbResume->setAttribute('id', 'ResumePessoa');
										$lbResumetxt = $doc->createTextNode("O que fez na vida: ");
										$lbResume->appendChild($lbResumetxt);
										$divDescricao->appendChild($lbResume);
									
								
										
										//primeiro cria o div do box que vai ter o resume
										$BoxResume = $doc->createElement('div');
										$BoxResume->setAttribute('class', 'myBox');
										$BoxResume->setAttribute('id', 'style-Resume');
										$divDescricao->appendChild($BoxResume);
										
										//apenda o resume
										$Resume = $doc->createElement('article');
										$Resume->setAttribute('id', 'PessoaResume');
								
										$ResumeFrag = $doc->createDocumentFragment();
										$ResumeFrag->appendXML( $meta['_curriculum'][0]);
										$Resume->appendChild($ResumeFrag);
										$BoxResume->appendChild($Resume);
									
									endif;
									
									
									if (array_key_exists('_phone', $meta)) :
										$tels = $meta['_phone'];
										//como podem ter varios tels então: cria o div que vai ter os tels
										$divTels = $doc->createElement('div');
										$divTels->setAttribute('class', 'telefones');
										
										//cria o label do tel
										
										$spanTel = $doc->createElement('span');
										$spanTel->setAttribute('id', 'telPessoa');
										$spanTel->setAttribute('class', 'genericon_parent genericon genericon-phone');
										$divTels->appendChild($spanTel);
										
										foreach ($tels as $numTel) {
												$aTel =  $doc->createElement('a');
												$aTel->setAttribute('class','telPessoa_content' );
												$lnkTel = 'callto:' . str_replace(' ', '', $numTel);
												$aTel->setAttribute('href', $lnkTel);
												$txtTel = $doc->createTextNode( $numTel);
												$aTel->appendChild($txtTel); 							
												$divTels->appendChild($aTel);
											}
											
										  $divDescricao->appendChild($divTels);
									endif;
									
								
								     //cria o div do email
										$divEmail = $doc->createElement('div');
										$divEmail->setAttribute('class', 'email');	
								
									//cria o label do email
										$spanEmail = $doc->createElement('span');
										$spanEmail->setAttribute('id', 'emailPessoa');
										$spanEmail->setAttribute('class', 'genericon_parent genericon genericon-mail');
										$divEmail->appendChild($spanEmail);
									
									//email
									$aEmail = $doc->createElement('a');
									$aEmail->setAttribute('class', 'email_pessoa');
									$txtMail = $meta['_email'][0];
									$txtMail = 'mailto:' . $txtMail ; 
									$aEmail->setAttribute('href', $txtMail);
									$txtEmail = $doc->createTextNode( $meta['_email'] [0]);
									$aEmail->appendChild($txtEmail);									
									$divEmail->appendChild($aEmail);
									
									$divDescricao->appendChild($divEmail);
									
									
									
									
									$linkedinTest = $meta['_linkedin'][0];
									if (!empty($linkedinTest)) :
											//cria o div do linkedin
											$divLinkedin = $doc->createElement('div');
											$divLinkedin->setAttribute('class', 'linkedin');	
								
											
											//cria o label do linkedin
											$spanLinkedin = $doc->createElement('span');
										    $spanLinkedin->setAttribute('id', 'linkedinPessoa');
										    $spanLinkedin->setAttribute('class', 'genericon_parent genericon genericon-linkedin');
										    $divLinkedin->appendChild($spanLinkedin);
											
											
											//tambem tem que criar uma ancora  para o linkeding... 
											$alinkedin = $doc->createElement('a');
											$alinkedin->setAttribute('class', 'linkedin_Pessoa');
											$alinkedin->setAttribute('href', 'https://www.linkedin.com/in/' . (string)$meta['_linkedin'][0]);		
											$alinkedin->setAttribute('target', '_blank');									
											$linkedin = $doc->createTextNode( (string)$meta['_linkedin'][0]);
											$alinkedin->appendChild($linkedin);								
											$divLinkedin->appendChild($alinkedin);
											
											$divDescricao->appendChild($divLinkedin);
											
									endif;
									
									
									//aqui apenda o fim 
									$divConteudo->appendChild($divDescricao);
									$divTab->insertBefore($divConteudo);
									
									$i++;
								
								}

	 echo $doc->saveHTML();

?>

	<script type="text/javascript">
		$(function () {
			$("#TabsPessoas").tabs();
		});
	</script>
