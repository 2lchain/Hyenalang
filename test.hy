struct point {
    x:u64,
    y:u64
}

fn makepoint() point {
    var a:point = undefined;
    a.x = 9;
    a.y = 10;
    return a;
}

fn usepoint(p:point) void {
    return p.x;
}

fn main() void {
    var a:point = undefined;
    a = makepoint();

    return usepoint(a);
}