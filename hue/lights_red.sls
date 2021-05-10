# Changes color of office lights to red
office_lights_red:
  module.run:
    - hue.color:
      - id: 1,2
      - color: red