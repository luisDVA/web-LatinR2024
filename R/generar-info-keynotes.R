generar_info_keynotes <- function() {
  tibble::tibble(
    name = "Julia Silge",
    href = "https://juliasilge.com/",
    img = "img/posts/julia.jpg",
    info_es = "Julia Silge es una científica de datos y
    gerente de ingeniería en Posit PBC (anteriormente RStudio),
    donde trabaja en herramientas de modelado de código abierto y MLOps.
    Es creadora de herramientas, autora,
    oradora principal internacional y practicante en el mundo real,
    enfocada en el análisis de datos y el aprendizaje automático.
    A Julia le encanta el análisis de texto,
    hacer gráficos hermosos y comunicar temas técnicos a audiencias diversas.
    Puedes encontrarla en línea en su [blog](https://juliasilge.com/) 
    y [YouTube](https://www.youtube.com/juliasilge).",
    info_pt = "Julia Silge é uma cientista de dados e
    gerente de engenharia na Posit PBC (anteriormente RStudio),
    onde trabalha em ferramentas de modelagem de código aberto e MLOps.
    Ela é construtora de ferramentas, autora,
    palestrante em conferências internacionais e praticante do mundo real,
    focando em análise de dados e aprendizado de máquina.
    Julia adora análise de texto, criar gráficos bonitos e
    comunicar tópicos técnicos para públicos diversos.
    Você pode encontrá-la online em seu [blog](https://juliasilge.com/) 
    e [canal do YouTube](https://www.youtube.com/juliasilge).",
    info_en = "Julia Silge is a data scientist and
    engineering manager at Posit PBC (formerly RStudio),
    where she works on open source modeling and MLOps tools.
    She is a tool builder, an author, an international keynote speaker,
    and a real-world practitioner focusing on data analysis and machine learning.
    Julia loves text analysis, making beautiful charts,
    and communicating about technical topics with diverse audiences.
    You can find her online at her [blog](https://juliasilge.com/) 
    e [canal do YouTube](https://www.youtube.com/juliasilge)."
  ) |> 
    tibble::add_row(
      name = "Will Landau",
      href = "https://wlandau.github.io/",
      img = "img/posts/will.jpg",
      info_es = "Will Landau es un estadístico y desarrollador
      de software en la industria en life sciences.
      Está especializado en los aspectos computacionales de la estadística
      bayesiana y en la investigación reproducible, además de ser el creador
      y mantenedor de los paquetes targets y crew en R.",
      info_pt = "Will Landau é um estatístico e desenvolvedor de software na indústria.
      Ele é especializado nos aspectos computacionais da estatística bayesiana
      e na pesquisa reprodutível,
      além de ser o criador e mantenedor dos pacotes de R targets e crew.",
      info_en = "Will Landau is a statistician and software developer in the
      life sciences industry. 
      He is specialized in the computational aspects of Bayesian statistics
      and reproducible research,
      and he is the creator and maintainer of the targets and crew R packages."
    )

}

generar_card_keynote <- function(tab, col_info = "info_es"){
  bslib::card(
    full_screen = FALSE,
    bslib::card_header(tab$name, class = "card-header-keynote"),
    bslib::card_image(
      file = here::here(tab$img),
      href = tab$href,
      border_radius = "all"
    ),
    bslib::card_body(shiny::markdown(tab[[col_info]]), ),
  )
}


generar_cards_keynotes <-
  function(info_keynotes,
           col_information = "info_es",
           width_col = 0.5) {
    bslib::layout_column_wrap(
      class = "cards-display",
      width = width_col,
      gap = "0.5cm",
      height = 300,
      generar_card_keynote(info_keynotes[1,], col_info = col_information),
      generar_card_keynote(info_keynotes[2,],  col_info = col_information)#,
      # generar_card_keynote(info_keynotes[3,],  col_info = col_information),
      # generar_card_keynote(info_keynotes[4,],  col_info = col_information)
    )
  }
