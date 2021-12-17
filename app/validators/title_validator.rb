class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.include?("Won't Believe" || "Secret" || "Top" || "Guess" )
            record.errors[:title] << "Title must include clickbait word"
        end
    end
end