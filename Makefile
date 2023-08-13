
all:
	docker compose up
clean:
	docker compose rm -fsv
	docker volume rm DatabaseCache
	docker volume rm WordpressFiles
	rm -rf /home/nramadan/data/DatabaseCache/*
	rm -rf /home/nramadan/data/WordpressFiles/*
fclean: clean
	docker system prune --volume -af

