.class final La/c/b/d;
.super La/c/b/b;


# static fields
.field private static final a:La/c/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/c/b/c;

    invoke-direct {v0}, La/c/b/c;-><init>()V

    sput-object v0, La/c/b/d;->a:La/c/b/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/c/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/c/b/a;
    .locals 1

    sget-object v0, La/c/b/d;->a:La/c/b/a;

    return-object v0
.end method
