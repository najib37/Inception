
all:
	docker compose up --build
clean:
	docker compose down --rmi all -v
	rm -rf /home/nramadan/data/DatabaseCache/*
	rm -rf /home/nramadan/data/WordpressFiles/*
fclean: clean
	docker system prune -af
