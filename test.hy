import "inc.hy"

fn hello() void {

}

struct point {
    a:u8,
    b:u8
}

impl point {
    new(a:u8, b:u8) point {
        var p:point = undefined;
        p.a = a;
        p.b = b;
        return p;
    }

    sum(p:*point) u8 {
        return p.a + p.b;
    } 
}

fn assert_eql(a:u8, b:u8) bool {
    if(a eq b) { write("test passed\n"); } else { write("test failed\n"); }
}

fn main() void {
    var my_point = point::new(1,2);
    var b = my_point.sum();
    assert_eql(b, 3);
}