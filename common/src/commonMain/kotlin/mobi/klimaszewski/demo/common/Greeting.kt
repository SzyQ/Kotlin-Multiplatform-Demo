package mobi.klimaszewski.demo.common

class Greeting {
    fun greeting(): String {
        return "Hello common, ${Platform().platform}!"
    }
}