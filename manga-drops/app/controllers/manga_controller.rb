class MangaController < ApplicationController
    require 'httparty'

    def index
        response = HTTParty.get('https://api.mangadex.org/manga?updatedAtSince=2021-05-25T00:00:00')
        JSON.parse(response.body)["results"].map{|listing| listing["data"]["attributes"]}.each do |manga_list|
            Manga.where(title: manga_list["title"]["en"], url: manga_list["links"]["engtl"] || manga_list["links"]["raw"]).first_or_create
        end
        render json: Manga.all
    end
end