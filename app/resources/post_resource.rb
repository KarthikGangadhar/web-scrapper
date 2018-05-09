class PostResource < JSONAPI::Resource
    attributes :href, :content
    filter :href
end