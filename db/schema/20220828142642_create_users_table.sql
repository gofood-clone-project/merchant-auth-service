-- +goose Up
-- +goose StatementBegin
create table users
(
    id         serial
        constraint users_pk
            primary key,
    full_name  varchar not null,
    email      varchar not null,
    created_at int     not null,
    date_of_birth int not null,
    updated_at int,
    deleted_at int
);

create unique index users_email_uindex
    on users (email);

create unique index users_id_uindex
    on users (id);


-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
