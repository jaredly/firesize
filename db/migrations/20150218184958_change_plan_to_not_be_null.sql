-- +goose Up
ALTER TABLE accounts ALTER COLUMN plan SET NOT NULL;
ALTER TABLE accounts ALTER COLUMN plan SET DEFAULT 'free';

-- +goose Down
ALTER TABLE accounts ALTER COLUMN plan DROP DEFAULT;
ALTER TABLE accounts ALTER COLUMN plan DROP NOT NULL;

