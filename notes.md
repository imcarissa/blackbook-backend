Group
    - has_many :contacts

    attributes:
    - name:string
    - category:string
    - description:string



Contact
    - belongs_to :group

    attributes:
    - group_id:integer
    - name:string
    - img_url:string
    - email: string
    - phone_number:integer
    - notes:string