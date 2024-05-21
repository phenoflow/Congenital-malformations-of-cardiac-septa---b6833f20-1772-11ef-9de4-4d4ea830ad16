cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  common-congenital-malformations-of-cardiac-septa---primary:
    run: common-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  congenital-malformations-of-cardiac-septa-defects---primary:
    run: congenital-malformations-of-cardiac-septa-defects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: common-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-fallottype---primary:
    run: congenital-malformations-of-cardiac-septa-fallottype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-defects---primary/output
  congenital-malformations-of-cardiac-septa-ventricle---primary:
    run: congenital-malformations-of-cardiac-septa-ventricle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-fallottype---primary/output
  correct-congenital-malformations-of-cardiac-septa---primary:
    run: correct-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-ventricle---primary/output
  congenital-malformations-of-cardiac-septa-secundum---primary:
    run: congenital-malformations-of-cardiac-septa-secundum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: correct-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-patent---primary:
    run: congenital-malformations-of-cardiac-septa-patent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-secundum---primary/output
  transannular-congenital-malformations-of-cardiac-septa---primary:
    run: transannular-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-patent---primary/output
  congenital-malformations-of-cardiac-septa-aorta---primary:
    run: congenital-malformations-of-cardiac-septa-aorta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: transannular-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-taussigbing---primary:
    run: congenital-malformations-of-cardiac-septa-taussigbing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-aorta---primary/output
  primum-congenital-malformations-of-cardiac-septa---primary:
    run: primum-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-taussigbing---primary/output
  multiple-congenital-malformations-of-cardiac-septa---primary:
    run: multiple-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primum-congenital-malformations-of-cardiac-septa---primary/output
  persistent-congenital-malformations-of-cardiac-septa---primary:
    run: persistent-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: multiple-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-cushion---primary:
    run: congenital-malformations-of-cardiac-septa-cushion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: persistent-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-roger's---primary:
    run: congenital-malformations-of-cardiac-septa-roger's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-cushion---primary/output
  aortopulmonary-congenital-malformations-of-cardiac-septa---primary:
    run: aortopulmonary-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-roger's---primary/output
  congenital-malformations-of-cardiac-septa---primary:
    run: congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: aortopulmonary-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-history---primary:
    run: congenital-malformations-of-cardiac-septa-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-foraman---primary:
    run: congenital-malformations-of-cardiac-septa-foraman---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-history---primary/output
  congenital-malformations-of-cardiac-septa-valve---primary:
    run: congenital-malformations-of-cardiac-septa-valve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-foraman---primary/output
  congenital-malformations-of-cardiac-septa-lutembacher's---primary:
    run: congenital-malformations-of-cardiac-septa-lutembacher's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-valve---primary/output
  malformations---primary:
    run: malformations---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-lutembacher's---primary/output
  congenital-malformations-of-cardiac-septa-procedure---primary:
    run: congenital-malformations-of-cardiac-septa-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: malformations---primary/output
  congenital-malformations-of-cardiac-septa-prosthesis---primary:
    run: congenital-malformations-of-cardiac-septa-prosthesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-procedure---primary/output
  congenital-malformations-of-cardiac-septa-revision---primary:
    run: congenital-malformations-of-cardiac-septa-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-prosthesis---primary/output
  prosthetic-congenital-malformations-of-cardiac-septa---primary:
    run: prosthetic-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-revision---primary/output
  congenital-malformations-of-cardiac-septa-enlargement---primary:
    run: congenital-malformations-of-cardiac-septa-enlargement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: prosthetic-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-operation---primary:
    run: congenital-malformations-of-cardiac-septa-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-enlargement---primary/output
  interatrial-congenital-malformations-of-cardiac-septa---primary:
    run: interatrial-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-operation---primary/output
  pericardial-congenital-malformations-of-cardiac-septa---primary:
    run: pericardial-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: interatrial-congenital-malformations-of-cardiac-septa---primary/output
  primary-congenital-malformations-of-cardiac-septa---primary:
    run: primary-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: pericardial-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-fenestration---primary:
    run: congenital-malformations-of-cardiac-septa-fenestration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: primary-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-closed---primary:
    run: congenital-malformations-of-cardiac-septa-closed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-fenestration---primary/output
  therapeutic-congenital-malformations-of-cardiac-septa---primary:
    run: therapeutic-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-closed---primary/output
  congenital-malformations-of-cardiac-septa-septostomy---primary:
    run: congenital-malformations-of-cardiac-septa-septostomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: therapeutic-congenital-malformations-of-cardiac-septa---primary/output
  congenital-malformations-of-cardiac-septa-graft---primary:
    run: congenital-malformations-of-cardiac-septa-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-septostomy---primary/output
  congenital-malformations-of-cardiac-septa-intraop---primary:
    run: congenital-malformations-of-cardiac-septa-intraop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-graft---primary/output
  percutaneous-congenital-malformations-of-cardiac-septa---primary:
    run: percutaneous-congenital-malformations-of-cardiac-septa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: congenital-malformations-of-cardiac-septa-intraop---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: percutaneous-congenital-malformations-of-cardiac-septa---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
