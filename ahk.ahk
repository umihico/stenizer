
    longpress(key, longkey, waitkey)
    {
              KeyWait, % waitkey, T0.25
              if ErrorLevel{
                        return longkey
              }
    }
    longpress_bs(key, restkey, waitkey)
    {
            KeyWait, % waitkey, T0.25
            if ErrorLevel{
                        send, {BS}
                        return restkey
            }
    }
    longpress_remap(key, restkey, waitkey)
    {
            KeyWait, % waitkey, T0.25
            if ErrorLevel{
                        return restkey
            }else{
                        return key
            }
    }
    combi(firstkey, secondkey, restkey)
    {
        send, % secondkey
        KeyWait, % secondkey, T0.06
        KeyWait, % firstkey, T0.01
        if ErrorLevel{
            return restkey
        }
    }
    combi_bs(firstkey, secondkey, restkey)
    {
        send, % secondkey
        KeyWait, % secondkey, T0.06
        KeyWait, % firstkey, T0.01
        if ErrorLevel{
            send, {BS}{BS}
            return restkey
        }
    }
    #UseHook
    

~a::send, % longpress("a", "nd{Space}", "a")

~b::send, % longpress_bs("b", "in{Space}", "b")

~c::send, % longpress("c", "lass{Space}():{Enter}def{Space}__init__(self):{Up}{Home}{Ctrl down}{Right}{Ctrl up}{Right}", "c")

~d::send, % longpress("d", "ef{Space}():{Home}{Ctrl down}{Right}{Ctrl up}{Right}", "d")

~e::send, % longpress("e", "lse", "e")

~f::send, % longpress("f", "or{Space}", "f")

~g::send, % longpress("g", "et(", "g")

~h::send, % longpress("h", "tml", "h")

~i::send, % longpress("i", "f{Space}", "i")

~j::send, % longpress("j", "oin", "j")

~k::send, % longpress("k", "ey", "k")

~l::send, % longpress("l", "en(", "l")

~m::send, % longpress_bs("m", "is{Space}", "m")

~n::send, % longpress("n", "ot{Space}", "n")

~o::send, % longpress("o", "r{Space}", "o")

~p::send, % longpress("p", "rint(", "p")

~q::send, % longpress("q", "ueue", "q")

~r::send, % longpress("r", "eturn{Space}", "r")

~s::send, % longpress("s", "elf", "s")

~t::send, % longpress("t", "ry:{Esc}{Enter}", "t")

~u::send, % longpress("u", "rl", "u")

~v::send, % longpress("v", "alue", "v")

~w::send, % longpress("w", "ith :", "w")

~x::send, % longpress("x", "path", "x")

~y::send, % longpress("y", "ield", "y")

~z::send, % longpress("z", "ip", "z")
::theSpace::th
~t & h::send, % combi("t", "h", "e{Space}")
::node::no
~n & o::send, % combi("n", "o", "de")
::importSpace::im
~i & m::send, % combi("i", "m", "port{Space}")
::first::fr
~f & r::send, % combi_bs("f", "r", "first")
::name::na
~n & a::send, % combi("n", "a", "me")
::True::tr
~t & r::send, % combi_bs("t", "r", "True")
::this::ts
~t & s::send, % combi_bs("t", "s", "this")
::data::da
~d & a::send, % combi("d", "a", "ta")
::False::fa
~f & a::send, % combi_bs("f", "a", "False")
::passEnter::pa
~p & a::send, % combi("p", "a", "ss{Enter}")
::typeSpace::ty
~t & y::send, % combi("t", "y", "pe{Space}")
::array::ar
~a & r::send, % combi("a", "r", "ray")
::thatSpace::ta
~t & a::send, % combi_bs("t", "a", "that{Space}")
::list::li
~l & i::send, % combi("l", "i", "st(")
::fileSpace::fi
~f & i::send, % combi("f", "i", "le{Space}")
::raiseSpace::ra
~r & a::send, % combi("r", "a", "ise{Space}")
::assertSpace::as
~a & s::send, % combi("a", "s", "sert{Space}")
::Exception::ex
~e & x::send, % combi_bs("e", "x", "Exception")
::set::st
~s & t::send, % combi_bs("s", "t", "set(")
::default::de
~d & e::send, % combi("d", "e", "fault")
::argsSpace::ag
~a & g::send, % combi_bs("a", "g", "args{Space}")
::append::ap
~a & p::send, % combi("a", "p", "pend(")
::save::se
~s & e::send, % combi_bs("s", "e", "save")
::obj::ob
~o & b::send, % combi("o", "b", "j")
::format::fo
~f & o::send, % combi("f", "o", "rmat(")
::willSpace::wi
~w & i::send, % combi("w", "i", "ll{Space}")
::int::in
~i & n::send, % combi("i", "n", "t(")
::param::pm
~p & m::send, % combi_bs("p", "m", "param")
::elif::el
~e & l::send, % combi("e", "l", "if:")
::kwargs::kw
~k & w::send, % combi("k", "w", "args")
::result::re
~r & e::send, % combi("r", "e", "sult")
::all::al
~a & l::send, % combi("a", "l", "l(")
::line::le
~l & e::send, % combi_bs("l", "e", "line")
::content::co
~c & o::send, % combi("c", "o", "ntent")
::request::rq
~r & q::send, % combi_bs("r", "q", "request")
::license::lc
~l & c::send, % combi_bs("l", "c", "license")
::test::te
~t & e::send, % combi("t", "e", "st")
::string::sg
~s & g::send, % combi_bs("s", "g", "string")
::error::er
~e & r::send, % combi("e", "r", "ror")
::useSpace::us
~u & s::send, % combi("u", "s", "e{Space}")
::user::ur
~u & r::send, % combi_bs("u", "r", "user")
::items::is
~i & s::send, % combi_bs("i", "s", "items(")
::sys::sy
~s & y::send, % combi("s", "y", "s")
::None::ne
~n & e::send, % combi_bs("n", "e", "None")
::output::op
~o & p::send, % combi_bs("o", "p", "output")
::version::ve
~v & e::send, % combi("v", "e", "rsion")
::pythonSpace::py
~p & y::send, % combi("p", "y", "thon{Space}")
::returns::rs
~r & s::send, % combi_bs("r", "s", "returns")
::constant::ca
~c & a::send, % combi_bs("c", "a", "constant")
::index::ix
~i & x::send, % combi_bs("i", "x", "index")
::youSpace::yo
~y & o::send, % combi("y", "o", "u{Space}")
::message::me
~m & e::send, % combi("m", "e", "ssage")
::title::ti
~t & i::send, % combi("t", "i", "tle")
::codeSpace::cd
~c & d::send, % combi_bs("c", "d", "code{Space}")
::any::an
~a & n::send, % combi("a", "n", "y(")
::function::fu
~f & u::send, % combi("f", "u", "nction")
::response::rp
~r & p::send, % combi_bs("r", "p", "response")
::http::ht
~h & t::send, % combi("h", "t", "tp")
::values::va
~v & a::send, % combi("v", "a", "lues")
::used::ud
~u & d::send, % combi_bs("u", "d", "used")
::msg::ms
~m & s::send, % combi("m", "s", "g")
::number::nu
~n & u::send, % combi("n", "u", "mber")
::write::wr
~w & r::send, % combi("w", "r", "ite")
::out::ou
~o & u::send, % combi("o", "u", "t")
::text::tx
~t & x::send, % combi_bs("t", "x", "text")
::item::it
~i & t::send, % combi("i", "t", "em")
::path::pt
~p & t::send, % combi_bs("p", "t", "path")
::directory::di
~d & i::send, % combi("d", "i", "rectory")
::add::ad
~a & d::send, % combi("a", "d", "d")
::should::sh
~s & h::send, % combi("s", "h", "ould")
::other::ot
~o & t::send, % combi("o", "t", "her")
::startSpace::sa
~s & a::send, % combi_bs("s", "a", "start{Space}")
::exceptSpaceExceptionSpaceaseEscEnter::et
~e & t::send, % combi_bs("e", "t", "except{Space}(Exception, ){Space}as e:{Esc}{Enter}")
::image::ig
~i & g::send, % combi_bs("i", "g", "image")
::str::sr
~s & r::send, % combi_bs("s", "r", "str(")
::size::si
~s & i::send, % combi("s", "i", "ze")
::which::wh
~w & h::send, % combi("w", "h", "ich")
::filename::fn
~f & n::send, % combi_bs("f", "n", "filename")
::when::wn
~w & n::send, % combi_bs("w", "n", "when")
::open::on
~o & n::send, % combi_bs("o", "n", "open")
::log::lo
~l & o::send, % combi("l", "o", "g")
::has::ha
~h & a::send, % combi("h", "a", "s")
::config::cf
~c & f::send, % combi_bs("c", "f", "config")
::client::cl
~c & l::send, % combi("c", "l", "ient")
::only::ol
~o & l::send, % combi_bs("o", "l", "only")
::one::oe
~o & e::send, % combi_bs("o", "e", "one")
::input::ip
~i & p::send, % combi_bs("i", "p", "input")
::module::mo
~m & o::send, % combi("m", "o", "dule")
::read::rd
~r & d::send, % combi_bs("r", "d", "read")
::canSpace::cn
~c & n::send, % combi_bs("c", "n", "can{Space}")
::shape::sp
~s & p::send, % combi_bs("s", "p", "shape")
::new::nw
~n & w::send, % combi_bs("n", "w", "new")
::json::js
~j & s::send, % combi("j", "s", "on")
::model::ml
~m & l::send, % combi_bs("m", "l", "model")
::env::en
~e & n::send, % combi("e", "n", "v")
::match::mt
~m & t::send, % combi_bs("m", "t", "match")
::context::cx
~c & x::send, % combi_bs("c", "x", "context")
::isinstance::ia
~i & a::send, % combi_bs("i", "a", "isinstance")
::must::mu
~m & u::send, % combi("m", "u", "st")
::range::rg
~r & g::send, % combi_bs("r", "g", "range(")
::info::if
~i & f::send, % combi_bs("i", "f", "info")
::options::os
~o & s::send, % combi_bs("o", "s", "options")
::may::ma
~m & a::send, % combi("m", "a", "y")
::status::su
~s & u::send, % combi_bs("s", "u", "status")
::valueerror::vr
~v & r::send, % combi_bs("v", "r", "valueerror")
::butSpace::bu
~b & u::send, % combi("b", "u", "t{Space}")
::field::fd
~f & d::send, % combi_bs("f", "d", "field")
::server::sv
~s & v::send, % combi_bs("s", "v", "server")
::run::ru
~r & u::send, % combi("r", "u", "n")
::mode::md
~m & d::send, % combi_bs("m", "d", "mode")
::instance::ie
~i & e::send, % combi_bs("i", "e", "instance")
::copy::cp
~c & p::send, % combi_bs("c", "p", "copy")
::api::ai
~a & i::send, % combi_bs("a", "i", "api")
::parser::pr
~p & r::send, % combi_bs("p", "r", "parser")
::source::so
~s & o::send, % combi("s", "o", "urce")
::constant::ct
~c & t::send, % combi_bs("c", "t", "constant")
::update::up
~u & p::send, % combi("u", "p", "date")
::split::sl
~s & l::send, % combi_bs("s", "l", "split")
::logger::lg
~l & g::send, % combi_bs("l", "g", "logger")
::files::fs
~f & s::send, % combi_bs("f", "s", "files")
::given::gi
~g & i::send, % combi("g", "i", "ven")
::object::oj
~o & j::send, % combi_bs("o", "j", "object")
::cls::cs
~c & s::send, % combi_bs("c", "s", "cls")
::params::ps
~p & s::send, % combi_bs("p", "s", "params")
::end::ed
~e & d::send, % combi_bs("e", "d", "end")
::command::cm
~c & m::send, % combi_bs("c", "m", "command")
::areSpace::ae
~a & e::send, % combi_bs("a", "e", "are{Space}")
::optional::oi
~o & i::send, % combi_bs("o", "i", "optional")
::timeout::to
~t & o::send, % combi_bs("t", "o", "timeout")
::func::fc
~f & c::send, % combi_bs("f", "c", "func")
::match::t0
~t & 0::send, % combi_bs("t", "0", "match")
::method::mh
~m & h::send, % combi_bs("m", "h", "method")
::settings::sn
~s & n::send, % combi_bs("s", "n", "settings")
::have::he
~h & e::send, % combi_bs("h", "e", "have")
::pO8wxW0V::po
~p & o::send, % combi_bs("p", "o", "pO8wxW0V")
::target::tg
~t & g::send, % combi_bs("t", "g", "target")
::fromSpaceSpaceimportSpaceLeft8::fm
~f & m::send, % combi_bs("f", "m", "from{Space}{Space}import{Space}{Left 8}")
::query::qu
~q & u::send, % combi("q", "u", "ery")
::headers::hs
~h & s::send, % combi_bs("h", "s", "headers")
::help::hp
~h & p::send, % combi_bs("h", "p", "help")
::debug::dg
~d & g::send, % combi_bs("d", "g", "debug")
::utf::ut
~u & t::send, % combi("u", "t", "f")
::event::ev
~e & v::send, % combi("e", "v", "ent")
::time::tm
~t & m::send, % combi_bs("t", "m", "time")
::token::tn
~t & n::send, % combi_bs("t", "n", "token")
::tuple::tu
~t & u::send, % combi("t", "u", "ple")
::lambdaxx::la
~l & a::send, % combi("l", "a", "mbda x:x")
::software::sw
~s & w::send, % combi_bs("s", "w", "software")
::each::ea
~e & a::send, % combi("e", "a", "ch")
::using::ug
~u & g::send, % combi_bs("u", "g", "using")
::Chrome::cr
~c & r::send, % combi_bs("c", "r", "Chrome")
::while::wl
~w & l::send, % combi_bs("w", "l", "while")
::check::ch
~c & h::send, % combi("c", "h", "eck")
::dict::dc
~d & c::send, % combi_bs("d", "c", "dict(")
::connection::ce
~c & e::send, % combi_bs("c", "e", "connection")
::group::gr
~g & r::send, % combi("g", "r", "oup")
::current::cu
~c & u::send, % combi("c", "u", "rrent")
::body::bo
~b & o::send, % combi("b", "o", "dy")
::keys::ke
~k & e::send, % combi("k", "e", "ys")
::float::fl
~f & l::send, % combi("f", "l", "oat")
::base::ba
~b & a::send, % combi("b", "a", "se")
::org::or
~o & r::send, % combi("o", "r", "g")
::under::un
~u & n::send, % combi("u", "n", "der")
::x00::x0
~x & 0::send, % combi("x", "0", "0")
::application::ac
~a & c::send, % combi_bs("a", "c", "application")
::host::ho
~h & o::send, % combi("h", "o", "st")
::xff::xf
~x & f::send, % combi("x", "f", "f")
::dtype::dt
~d & t::send, % combi("d", "t", "ype")
::root::ro
~r & o::send, % combi("r", "o", "ot")
::america::am
~a & m::send, % combi("a", "m", "erica")
::was::wa
~w & a::send, % combi("w", "a", "s")
::axis::ax
~a & x::send, % combi("a", "x", "is")
::bytes::by
~b & y::send, % combi("b", "y", "tes")
::document::do
~d & o::send, % combi("d", "o", "cument")
::break::br
~b & r::send, % combi("b", "r", "eak")
::after::af
~a & f::send, % combi("a", "f", "ter")
::either::ei
~e & i::send, % combi("e", "i", "ther")
::offset::of
~o & f::send, % combi("o", "f", "fset")
::getattr::ge
~g & e::send, % combi("g", "e", "tattr")
::attr::at
~a & t::send, % combi("a", "t", "tr")
::right::ri
~r & i::send, % combi("r", "i", "ght")
::before::be
~b & e::send, % combi("b", "e", "fore")
::block::bl
~b & l::send, % combi("b", "l", "ock")
::empty::em
~e & m::send, % combi("e", "m", "pty")
::public::pu
~p & u::send, % combi("p", "u", "blic")
::bin::bi
~b & i::send, % combi("b", "i", "n")
::just::ju
~j & u::send, % combi("j", "u", "st")
::plt::pl
~p & l::send, % combi("p", "l", "t")
::available::av
~a & v::send, % combi("a", "v", "ailable")
::two::tw
~t & w::send, % combi("t", "w", "o")
::schema::sc
~s & c::send, % combi("s", "c", "hema")
::kind::ki
~k & i::send, % combi("k", "i", "nd")
::view::vi
~v & i::send, % combi("v", "i", "ew")
::word::wo
~w & o::send, % combi("w", "o", "rd")
::author::au
~a & u::send, % combi("a", "u", "thor")
::gnu::gn
~g & n::send, % combi("g", "n", "u")
::min::mi
~m & i::send, % combi("m", "i", "n")
::django::dj
~d & j::send, % combi("d", "j", "ango")
::over::ov
~o & v::send, % combi("o", "v", "er")
::job::jo
~j & o::send, % combi("j", "o", "b")
::about::ab
~a & b::send, % combi("a", "b", "out")
::idx::id
~i & d::send, % combi("i", "d", "x")
::selenium::sm
~s & m::send, % combi_bs("s", "m", "selenium")
::global::gl
~g & l::send, % combi("g", "l", "obal")
::rtype::rt
~r & t::send, % combi("r", "t", "ype")
::weights::we
~w & e::send, % combi("w", "e", "ights")
::Pi.::pi
~p & i::send, % combi_bs("p", "i", "Pi'.&@")
::permissions::pe
~p & e::send, % combi("p", "e", "rmissions")
::xml::xm
~x & m::send, % combi("x", "m", "l")
::x1b::x1
~x & 1::send, % combi("x", "1", "b")
::google::go
~g & o::send, % combi("g", "o", "ogle")
::feature::fe
~f & e::send, % combi("f", "e", "ature")
::skip::sk
~s & k::send, % combi("s", "k", "ip")
::ndim::nd
~n & d::send, % combi("n", "d", "im")
::png::pn
~p & n::send, % combi("p", "n", "g")
::zero::ze
~z & e::send, % combi("z", "e", "ro")
::driver::dr
~d & r::send, % combi("d", "r", "iver")
::descriptor::_d
~_ & d::send, % combi("_", "d", "escriptor")
::owner::ow
~o & w::send, % combi("o", "w", "ner")
::xrange::xr
~x & r::send, % combi("x", "r", "ange")
::uid::ui
~u & i::send, % combi("u", "i", "d")
::dumps::du
~d & u::send, % combi("d", "u", "mps")
::await::aw
~a & w::send, % combi("a", "w", "ait")
::history::hi
~h & i::send, % combi("h", "i", "story")
::escape::es
~e & s::send, % combi("e", "s", "cape")
::echo::ec
~e & c::send, % combi("e", "c", "ho")
::href::hr
~h & r::send, % combi("h", "r", "ef")
::cint::c_
~c & _::send, % combi("c", "_", "int")
::year::ye
~y & e::send, % combi("y", "e", "ar")
::sqrt::sq
~s & q::send, % combi("s", "q", "rt")
::equal::eq
~e & q::send, % combi("e", "q", "ual")
::gmail::gm
~g & m::send, % combi("g", "m", "ail")
::id::_i
~_ & i::send, % combi("_", "i", "d")
::ioerror::io
~i & o::send, % combi("i", "o", "error")
::workbook::wb
~w & b::send, % combi_bs("w", "b", "workbook")
::worksheet::ws
~w & s::send, % combi_bs("w", "s", "worksheet")
::bsd::bs
~b & s::send, % combi("b", "s", "d")
::nsamples::n_
~n & _::send, % combi("n", "_", "samples")
::zone::zo
~z & o::send, % combi("z", "o", "ne")
::icon::ic
~i & c::send, % combi("i", "c", "on")
::dns::dn
~d & n::send, % combi("d", "n", "s")
::dword::dw
~d & w::send, % combi("d", "w", "ord")
::pdf::pd
~p & d::send, % combi("p", "d", "f")
::yaml::ya
~y & a::send, % combi("y", "a", "ml")
::volume::vo
~v & o::send, % combi("v", "o", "lume")
::cwd::cw
~c & w::send, % combi("c", "w", "d")
::vnd::vn
~v & n::send, % combi("v", "n", "d")
::name::_n
~_ & n::send, % combi("_", "n", "ame")
::epoch::ep
~e & p::send, % combi("e", "p", "och")
::know::kn
~k & n::send, % combi("k", "n", "ow")
::h2o::h2
~h & 2::send, % combi("h", "2", "o")
::rhs::rh
~r & h::send, % combi("r", "h", "s")
::jpg::jp
~j & p::send, % combi("j", "p", "g")
::jid::ji
~j & i::send, % combi("j", "i", "d")
::dst::ds
~d & s::send, % combi("d", "s", "t")
::rval::rv
~r & v::send, % combi("r", "v", "al")
::tzinfo::tz
~t & z::send, % combi("t", "z", "info")
::utils::ul
~u & l::send, % combi_bs("u", "l", "utils")
::cipher::ci
~c & i::send, % combi("c", "i", "pher")
::gsm::gs
~g & s::send, % combi("g", "s", "m")
::oauth::oa
~o & a::send, % combi("o", "a", "uth")
::klass::kl
~k & l::send, % combi("k", "l", "ass")
::cache::_c
~_ & c::send, % combi("_", "c", "ache")
::linux::lu
~l & u::send, % combi_bs("l", "u", "linux")
::logger::_l
~_ & l::send, % combi("_", "l", "ogger")
::lhs::lh
~l & h::send, % combi("l", "h", "s")
::cv2::cv
~c & v::send, % combi("c", "v", "2")
::uwlines::uw
~u & w::send, % combi("u", "w", "lines")
::gitadd::ga
~g & a::send, % combi_bs("g", "a", "git add")
::mypy::my
~m & y::send, % combi("m", "y", "py")
::backend::_b
~_ & b::send, % combi("_", "b", "ackend")
::cython::cy
~c & y::send, % combi("c", "y", "thon")
::fgraph::fg
~f & g::send, % combi("f", "g", "raph")
::eof::eo
~e & o::send, % combi("e", "o", "f")
::ckan::ck
~c & k::send, % combi("c", "k", "an")
::x48::x4
~x & 4::send, % combi("x", "4", "8")
::tcp::tc
~t & c::send, % combi("t", "c", "p")
::hub::hu
~h & u::send, % combi("h", "u", "b")
::gui::gu
~g & u::send, % combi("g", "u", "i")
::x32::x3
~x & 3::send, % combi("x", "3", "2")
::state::_s
~_ & s::send, % combi("_", "s", "tate")
::ivar::iv
~i & v::send, % combi("i", "v", "ar")
::mkdir::mk
~m & k::send, % combi("m", "k", "dir")
::xtrain::x_
~x & _::send, % combi("x", "_", "train")
::rfc::rf
~r & f::send, % combi("r", "f", "c")
::lstrip::ls
~l & s::send, % combi("l", "s", "trip")
::0xff::0x
~0 & x::send, % combi("0", "x", "ff")
::gdb::gd
~g & d::send, % combi("g", "d", "b")
::dll::dl
~d & l::send, % combi("d", "l", "l")
::mnist::mn
~m & n::send, % combi("m", "n", "ist")
::nltk::nl
~n & l::send, % combi("n", "l", "tk")
::javascript::ja
~j & a::send, % combi("j", "a", "vascript")
::effect::ef
~e & f::send, % combi("e", "f", "fect")
::x66::x6
~x & 6::send, % combi("x", "6", "6")
::gtk::gt
~g & t::send, % combi("g", "t", "k")
::rmtree::rm
~r & m::send, % combi("r", "m", "tree")
::gzip::gz
~g & z::send, % combi("g", "z", "ip")
::jedi::je
~j & e::send, % combi("j", "e", "di")
::type::_t
~_ & t::send, % combi("_", "t", "ype")
::rng::rn
~r & n::send, % combi("r", "n", "g")
::tkinter::tk
~t & k::send, % combi("t", "k", "inter")
::zmq::zm
~z & m::send, % combi("z", "m", "q")
::gitpull::gp
~g & p::send, % combi_bs("g", "p", "git pull")
::okay::ok
~o & k::send, % combi("o", "k", "ay")
::ytrain::y_
~y & _::send, % combi("y", "_", "train")
::dynamic::dy
~d & y::send, % combi("d", "y", "namic")
::egg::eg
~e & g::send, % combi("e", "g", "g")
::xonsh::xo
~x & o::send, % combi("x", "o", "nsh")
::hypothesis::hy
~h & y::send, % combi("h", "y", "pothesis")
::yields::yi
~y & i::send, % combi("y", "i", "elds")
::odoo::od
~o & d::send, % combi("o", "d", "oo")
::fields::_f
~_ & f::send, % combi("_", "f", "ields")
::zipfile::zi
~z & i::send, % combi("z", "i", "pfile")
::occurred::oc
~o & c::send, % combi("o", "c", "curred")
::xaa::xa
~x & a::send, % combi("x", "a", "a")
::pkgresources::pk
~p & k::send, % combi("p", "k", "g_resources")
::hmac::hm
~h & m::send, % combi("h", "m", "ac")
::x86::x8
~x & 8::send, % combi("x", "8", "6")
::photo::ph
~p & h::send, % combi("p", "h", "oto")
::tls::tl
~t & l::send, % combi("t", "l", "s")
::kombu::ko
~k & o::send, % combi("k", "o", "mbu")
::version::_v
~_ & v::send, % combi("_", "v", "ersion")
::message::_m
~_ & m::send, % combi("_", "m", "essage")
::dbname::db
~d & b::send, % combi("d", "b", "name")
::europe::eu
~e & u::send, % combi("e", "u", "rope")
::ymin::ym
~y & m::send, % combi("y", "m", "in")
::qtile::qt
~q & t::send, % combi("q", "t", "ile")
::parms::_p
~_ & p::send, % combi("_", "p", "arms")
::mpl::mp
~m & p::send, % combi("m", "p", "l")
::tqdm::tq
~t & q::send, % combi("t", "q", "dm")
::nice::ni
~n & i::send, % combi("n", "i", "ce")
::xgb::xg
~x & g::send, % combi("x", "g", "b")
::ftp::ft
~f & t::send, % combi("f", "t", "p")
::root::_r
~_ & r::send, % combi("_", "r", "oot")
::xhtml::xh
~x & h::send, % combi("x", "h", "tml")
::sdist::sd
~s & d::send, % combi("s", "d", "ist")
::vcs::vc
~v & c::send, % combi("v", "c", "s")
::sftp::sf
~s & f::send, % combi("s", "f", "tp")
::zhhant::zh
~z & h::send, % combi("z", "h", "_hant")
::omd::om
~o & m::send, % combi("o", "m", "d")
::wcs::wc
~w & c::send, % combi("w", "c", "s")
::pmi::p_
~p & _::send, % combi("p", "_", "mi")
::rcparams::rc
~r & c::send, % combi("r", "c", "params")
::kafka::ka
~k & a::send, % combi("k", "a", "fka")
::iris::ir
~i & r::send, % combi("i", "r", "is")
::yutani::yu
~y & u::send, % combi("y", "u", "tani")
::pca::pc
~p & c::send, % combi("p", "c", "a")
::pwnlib::pw
~p & w::send, % combi("p", "w", "nlib")
::x50::x5
~x & 5::send, % combi("x", "5", "0")
::xlabel::xl
~x & l::send, % combi("x", "l", "abel")
::wmsg::wm
~w & m::send, % combi("w", "m", "sg")
::tweepy::tp
~t & p::send, % combi_bs("t", "p", "tweepy")
::xc0::xc
~x & c::send, % combi("x", "c", "0")
::zlib::zl
~z & l::send, % combi("z", "l", "ib")
::errhandler::_e
~_ & e::send, % combi("_", "e", "rrhandler")
::ylabel::yl
~y & l::send, % combi("y", "l", "abel")
::fcode::f_
~f & _::send, % combi("f", "_", "code")
::u79fb::u7
~u & 7::send, % combi("u", "7", "9fb")
::jwt::jw
~j & w::send, % combi("j", "w", "t")
::lpwstr::lp
~l & p::send, % combi("l", "p", "wstr")
::u4e2d::u4
~u & 4::send, % combi("u", "4", "e2d")
::zkroot::zk
~z & k::send, % combi("z", "k", "root")
::load::ld
~l & d::send, % combi_bs("l", "d", "load")
::x20::x2
~x & 2::send, % combi("x", "2", "0")
::nrows::nr
~n & r::send, % combi("n", "r", "ows")
::xmlemptytag::_x
~_ & x::send, % combi("_", "x", "ml_empty_tag")
::dfa::df
~d & f::send, % combi("d", "f", "a")
::ncols::nc
~n & c::send, % combi("n", "c", "ols")
::api::_a
~_ & a::send, % combi("_", "a", "pi")
::cgi::cg
~c & g::send, % combi("c", "g", "i")
::lvalue::lv
~l & v::send, % combi("l", "v", "alue")
::url::_u
~_ & u::send, % combi("_", "u", "rl")
::zappacli::za
~z & a::send, % combi("z", "a", "ppa_cli")
::b64encode::b6
~b & 6::send, % combi("b", "6", "4encode")
::get::_g
~_ & g::send, % combi("_", "g", "et")
::2xlarge::2x
~2 & x::send, % combi("2", "x", "large")
::jquery::jq
~j & q::send, % combi("j", "q", "uery")
::dpi::dp
~d & p::send, % combi("d", "p", "i")
::vmin::vm
~v & m::send, % combi("v", "m", "in")
::npyintp::np
~n & p::send, % combi("n", "p", "y_intp")
::lxml::lx
~l & x::send, % combi("l", "x", "ml")
::vpc::vp
~v & p::send, % combi("v", "p", "c")
::8xlarge::8x
~8 & x::send, % combi("8", "x", "large")
::headers::_h
~_ & h::send, % combi("_", "h", "eaders")
::4xlarge::4x
~4 & x::send, % combi("4", "x", "large")
::u901a::u9
~u & 9::send, % combi("u", "9", "01a")
::pjoin::pj
~p & j::send, % combi("p", "j", "oin")
::nbytes::nb
~n & b::send, % combi("n", "b", "ytes")
::tbl::tb
~t & b::send, % combi("t", "b", "l")
::x74::x7
~x & 7::send, % combi("x", "7", "4")
::ubuntu::ub
~u & b::send, % combi("u", "b", "untu")
::fps::fp
~f & p::send, % combi("f", "p", "s")
::dim::dm
~d & m::send, % combi_bs("d", "m", "dim ")
::x90::x9
~x & 9::send, % combi("x", "9", "0")
::keys::_k
~_ & k::send, % combi("_", "k", "eys")
::gym::gy
~g & y::send, % combi("g", "y", "m")
::i18n::i1
~i & 1::send, % combi("i", "1", "8n")
::xbf::xb
~x & b::send, % combi("x", "b", "f")
::wdg::wd
~w & d::send, % combi("w", "d", "g")
::queue::_q
~_ & q::send, % combi("_", "q", "ueue")
::a4paper::a4
~a & 4::send, % combi("a", "4", "paper")
::nthash::nt
~n & t::send, % combi("n", "t", "hash")
::1o1o::1o
~1 & o::send, % combi("1", "o", "1o")
::izip::iz
~i & z::send, % combi("i", "z", "ip")
::pxd::px
~p & x::send, % combi("p", "x", "d")
::vhost::vh
~v & h::send, % combi("v", "h", "ost")
::lmhash::lm
~l & m::send, % combi("l", "m", "hash")
::write::_w
~_ & w::send, % combi("_", "w", "rite")
::tflearn::tf
~t & f::send, % combi("t", "f", "learn")
::xd0::xd
~x & d::send, % combi("x", "d", "0")
::kshp::ks
~k & s::send, % combi("k", "s", "hp")
::xyz::xy
~x & y::send, % combi("x", "y", "z")
::qrcode::qr
~q & r::send, % combi("q", "r", "code")
::vstack::vs
~v & s::send, % combi("v", "s", "tack")
::lbrynet::lb
~l & b::send, % combi("l", "b", "rynet")
::xval::xv
~x & v::send, % combi("x", "v", "al")
::khtml::kh
~k & h::send, % combi("k", "h", "tml")
::cbook::cb
~c & b::send, % combi("c", "b", "ook")
::long::ln
~l & n::send, % combi_bs("l", "n", "long")
::illegal::il
~i & l::send, % combi("i", "l", "legal")
::xe8::xe
~x & e::send, % combi("x", "e", "8")
::json::_j
~_ & j::send, % combi("_", "j", "son")
::qos::qo
~q & o::send, % combi("q", "o", "s")
::s3client::s3
~s & 3::send, % combi("s", "3", "_client")
::w191::w1
~w & 1::send, % combi("w", "1", "91")
::u52d5::u5
~u & 5::send, % combi("u", "5", "2d5")
::mro::mr
~m & r::send, % combi("m", "r", "o")
::dhcp::dh
~d & h::send, % combi("d", "h", "cp")
::qname::qn
~q & n::send, % combi("q", "n", "ame")
::eye::ey
~e & y::send, % combi("e", "y", "e")
::1st::1s
~1 & s::send, % combi("1", "s", "t")
::nvim::nv
~n & v::send, % combi("n", "v", "im")
::gca::gc
~g & c::send, % combi("g", "c", "a")
::qlabel::ql
~q & l::send, % combi("q", "l", "abel")
::bmp::bm
~b & m::send, % combi("b", "m", "p")
::kgriffs::kg
~k & g::send, % combi("k", "g", "riffs")
::github::gh
~g & h::send, % combi_bs("g", "h", "github")
::pformat::pf
~p & f::send, % combi("p", "f", "ormat")
::iidx::i_
~i & _::send, % combi("i", "_", "idx")
::xproto::xp
~x & p::send, % combi("x", "p", "roto")
::uvloop::uv
~u & v::send, % combi("u", "v", "loop")
::h5py::h5
~h & 5::send, % combi("h", "5", "py")
::jd1::jd
~j & d::send, % combi("j", "d", "1")
::tdbcassandra::td
~t & d::send, % combi("t", "d", "b_cassandra")
::jython::jy
~j & y::send, % combi("j", "y", "thon")
::qpid::qp
~q & p::send, % combi("q", "p", "id")
::azure::az
~a & z::send, % combi("a", "z", "ure")
::ebx::eb
~e & b::send, % combi("e", "b", "x")
::i386::i3
~i & 3::send, % combi("i", "3", "86")
::ljust::lj
~l & j::send, % combi("l", "j", "ust")
::lyrics::ly
~l & y::send, % combi("l", "y", "rics")
::wfile::wf
~w & f::send, % combi("w", "f", "ile")
::bdb::bd
~b & d::send, % combi("b", "d", "b")
::ajax::aj
~a & j::send, % combi("a", "j", "ax")
::aka::ak
~a & k::send, % combi("a", "k", "a")
::bgcolor::bg
~b & g::send, % combi("b", "g", "color")
::rlock::rl
~r & l::send, % combi("r", "l", "ock")
::lrucache::lr
~l & r::send, % combi("l", "r", "u_cache")
::nfft::nf
~n & f::send, % combi("n", "f", "ft")
::kral::kr
~k & r::send, % combi("k", "r", "al")
::2nd::2n
~2 & n::send, % combi("2", "n", "d")
::option::_o
~_ & o::send, % combi("_", "o", "ption")
::ahead::ah
~a & h::send, % combi("a", "h", "ead")
::nkern::nk
~n & k::send, % combi("n", "k", "ern")
::lflags::lf
~l & f::send, % combi("l", "f", "lags")
::cd..::c.
~c & .::send, % combi_bs("c", ".", "cd..")
::ifSpacenameSpaceSpaceSpacemainEscEnter::nm
~n & m::send, % combi_bs("n", "m", "if{Space}__name__{Space}=={Space}{Space}'__main__':{Esc}{Enter}")
::SpaceSpacecodingSpaceutf8SpaceEscEnterfr::um
~u & m::send, % combi_bs("u", "m", "#{Space}-*-{Space}coding:{Space}utf-8{Space}-*-{Esc}{Enter}from{Space}mother{Space}import{Space}*{Esc}{Enter}{Enter}if{Space}__name__{Space}=={Space}{Space}'__main__':")

0::send, % longpress_remap("0", "#2", "0")

1::send, % longpress_remap("1", "#1", "1")

2::send, % longpress_remap("2", "#4", "2")

3::send, % longpress_remap("3", "#3", "3")

4::send, % longpress_remap("4", "#6", "4")

5::send, % longpress_remap("5", "#5", "5")

6::send, % longpress_remap("6", "#8", "6")

7::send, % longpress_remap("7", "#7", "7")

9::send, % longpress_remap("9", "#9", "9")

.::send, % longpress_remap(".", ",", ".")

'::send, % longpress_remap("'", "+2", "'")

-::send, % longpress_remap("-", "=", "-")

[::send, % longpress_remap("[", "]", "[")

~{::send, % longpress("+[", "]", "{")

(::send, % longpress_remap("(", ")", "(")

F22::\

F23::vkF3sc029

F16::+

F17::^]

F24::_

!F20::send,<=

!F21::send,>=

F20::send,<

F21::send,>

F19::send,{Ctrl down}v{Ctrl up}

F18::send,{Ctrl down}c{Ctrl up}

^'::send,""{Left 3}

!(::send,(x for x in )

![::send,[x for x in ]

!{::send,{Shift down}[{Shift up}k:v for k in {Shift down}]{Shift up}

!-::send,{Shift down}1{Shift up}=

^-::send,==
