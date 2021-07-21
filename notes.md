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


    * might have to create 3rd model 'category' to create a foreign key
        - remove category column from Groups table
        - create category model
        - re-seed data (db drop, db migrate, db seed)