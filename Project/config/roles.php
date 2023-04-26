<?php
return [
    'admin' => [
        'permissions' => [
            'manage_users',
            'manage_posts',
            'manage_comments'
        ]
    ],
    'user' => [
        'permissions' => [
            'create_post',
            'edit_post',
            'delete_post',
            'comment_on_post'
        ]
    ],
    'guest' => [
        'permissions' => [
            'view_posts',
            'view_comments'
        ]
    ]
];