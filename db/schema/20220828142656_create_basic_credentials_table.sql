-- +goose Up
-- +goose StatementBegin
create table basic_credentials
(
    id         serial
        constraint basic_credentials_pk
            primary key,
    user_id int not null
        constraint basic_credentials_users_id_fk
            references users (id)
            on update cascade on delete cascade,
    username   varchar not null,
    password   varchar not null,
    created_at int     not null,
    updated_at int,
    deleted_at int
);

create unique index basic_credentials_id_uindex
    on basic_credentials (id);

create unique index basic_credentials_user_id_uindex
    on basic_credentials (user_id);

create unique index basic_credentials_username_uindex
    on basic_credentials (username);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
