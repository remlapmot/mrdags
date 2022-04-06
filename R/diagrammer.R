#' @importFrom DiagrammeR grViz
#' @export
single_iv_dag <- function(noborders = TRUE) {
  if (noborders) {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB]

      node [shape=ellipse]
      U [label='Confounders']

      node [shape=plaintext, height=0.3, width=0.3]
      G [label='Genotype']
      X [label='Phenotype']
      Y [label='Outcome']

      { rank = same; G X Y }

      G -> X [minlen=3]
      U -> X
      U -> Y
      X -> Y [minlen=3]
      }
      ", height = 200)
  } else {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB]

      node [shape=ellipse]
      U [label='Confounders']

      node [shape=box, height=0.3, width=0.3]
      G [label='Genotype']
      X [label='Phenotype']
      Y [label='Outcome']

      { rank = same; G X Y }

      G -> X [minlen=3]
      U -> X
      U -> Y
      X -> Y [minlen=3]
      }
      ", height = 200)
  }
}

#' @importFrom DiagrammeR grViz
#' @export
multiple_iv_dag <- function(noborders = TRUE) {
  if (noborders) {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato]

      node [shape=ellipse]
      U [label='Confounders', pos='3,1!']

      node [shape=plaintext, height=0.3, width=0.3]
      G1 [label='<I>G@_{1}</I>', pos='0,0.75!']
      G2 [label='<I>G@_{2}</I>', pos='0,0!']
      G3 [label='<I>G@_{3}</I>', pos='0,-0.75!']
      X [label='Phenotype', pos='2,0!']
      Y [label='Outcome', pos='4,0!']

      { rank = same; G2 X Y }

      G1 -> X 
      G2 -> X 
      G3 -> X 
      U -> X
      U -> Y
      X -> Y 
      }
      ", height = 200)
  } else {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato]

      node [shape=ellipse]
      U [label='Confounders', pos='3,1!']

      node [shape=box, height=0.3, width=0.3]
      G1 [label='<I>G@_{1}</I>', pos='0,0.75!']
      G2 [label='<I>G@_{2}</I>', pos='0,0!']
      G3 [label='<I>G@_{3}</I>', pos='0,-0.75!']
      X [label='Phenotype', pos='2,0!']
      Y [label='Outcome', pos='4,0!']

      { rank = same; G2 X Y }

      G1 -> X
      G2 -> X
      G3 -> X
      U -> X
      U -> Y
      X -> Y
      }
      ", height = 200)
  }
}

#' @importFrom DiagrammeR grViz
#' @export
single_iv_path_diagram <- function(confounder = TRUE) {
  if (confounder) {
    DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato]

      node [shape=ellipse, height=0.3, width=0.3]
      U [label=<<I>U</I>>, pos='3,1!']

      node [shape=box, height=0.3, width=0.3]
      G [label=<<I>G</I>>, pos='0,0!']
      X [label=<<I>X</I>>, pos='2,0!']
      Y [label=<<I>Y</I>>, pos='4,0!']

      node [shape=circle, height=0.35, fixedsize=true]
      Ex [label='<I>&epsilon;@_{X}</I>', pos='2,1!']
      Ey [label='<I>&epsilon;@_{Y}</I>', pos='4,1!']

      G -> X [label='<I>&beta;@_{GX}</I>']
      Ex -> X [label=1]
      Ey -> Y [label=1]
      U -> X [label='<I>&beta;@_{UX}</I>']
      U -> Y [label='<I>&beta;@_{UY}</I>']
      X -> Y [label='<I>&beta;@_{XY}</I>']
      U -> U [dir='both', headport='n', tailport='n']
      G -> G [dir='both', headport='w', tailport='w']
      Ex -> Ex [dir='both', headport='n', tailport='n']
      Ey -> Ey [dir='both', headport='n', tailport='n']
      }
      ", height = 200)
  } else {
    DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato, splines=true]

      node [shape=box, height=0.3, width=0.3]
      G [label=<<I>G</I>>, pos='0,0!']
      X [label=<<I>X</I>>, pos='2,0!']
      Y [label=<<I>Y</I>>, pos='4,0!']

      node [shape=circle, height=0.35, fixedsize=true]
      Ex [label='<I>&epsilon;@_{X}</I>', pos='2,1!']
      Ey [label='<I>&epsilon;@_{Y}</I>', pos='4,1!']
      
      dummy [label='', height=0.6, pos='3,1!', color=white]

      G -> X [label='<I>&beta;@_{GX}</I>']
      Ex -> X [label=1]
      Ey -> Y [label=1]
      X -> Y [label='<I>&beta;@_{XY}</I>']
      Ex -> Ey [dir='both', label=<<I>&rho;</I>>]
      G -> G [dir='both', headport='w', tailport='w']
      Ex -> Ex [dir='both', headport='n', tailport='n']
      Ey -> Ey [dir='both', headport='n', tailport='n']
      }
      ", height = 200)
  }
}
