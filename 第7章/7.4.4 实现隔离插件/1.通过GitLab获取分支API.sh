curl --header "PRIVATE-TOKEN: <your_access_token>" "https://[gitlab地址]/api/v4/ projects/5/repository/branches"

# [
#   {
#     "name": "master",
#     "merged": false,
#     "protected": true,
#     "default": true,
#     "developers_can_push": false,
#     "developers_can_merge": false,
#     "can_push": true,
#     "web_url": "http://[gitlab地址]/my-group/my-project/-/tree/master",
#     "commit": {
#       "author_email": "jartto@example.com",
#       "author_name": "Jartto",
#       "authored_date": "2021-06-15T05:51:39-07:00",
#       "committed_date": "2021-06-15T03:44:20-07:00",
#       "id": "7b5c3cc8be40ee161ae89a06bba6229da1032a0c",
#       "short_id": "7b5c3cc",
#       "title": "add projects API",
#       "message": "add projects API",
#       "parent_ids": [
#         "4ad91d3c1144c406e50c7b33bae684bd6837faf8"
#       ]
#     }
#   },
#   ...
# ]
