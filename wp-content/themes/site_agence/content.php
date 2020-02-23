<header class="nouvelle__entete">
    <div class="nouvelle__image">
        <?php if(has_post_thumbnail()): ?>
            <?php $id_image = get_post_thumbnail_id($post);?>
            <picture class="">
                <source media="(max-width:600px)" srcset="
            <?php echo get_the_post_thumbnail_url($post,"mobile_bleed")?>"/>
                <source media="(min-width:601px)" srcset="
            <?php echo get_the_post_thumbnail_url($post,"col6de12")?>"/>
                <img src="
            <?php echo get_the_post_thumbnail_url($post,"mobile_bleed")?>" alt="<?php echo get_post_meta($id_image, '_wp_attachment_image_alt', true)?>"/>
            </picture>
        <?php endif;?>
    </div>
    <?php if(is_single()) { ?>
        <h3 class="nouvelle__titre"><?= $post->post_title; ?></h3>
    <?php } else { ?>
        <h3 class="nouvelle__titre"><a href="<?= $post->guid;?>"><?= $post->post_title;?></a></h3>
    <?php } ?>
        <time class="metadata nouvelle__date" datetime="<?php the_date('Y-m-d')?>"><?= get_the_date();?></time>
</header>
<div class="nouvelle__contenu">
    <?php if(has_excerpt() && is_page() || has_excerpt() && is_home()) { ?>
        <div class="nouvelle__extrait">
            <?= '"'.$post->post_excerpt.'"'; ?>
        </div>
    <?php } else { ?>
        <div class="nouvelle__texte">
            <?= $post->post_content; ?>
        </div>
    <?php } ?>

    <?php if(is_home()): ?>
        <p class="nouvelle__lien">
            <a href="<?= $post->guid;?>"><span class="lien__fonce_neon--magenta">En lire plus</span></a>
        </p>
    <?php endif; ?>
</div>
