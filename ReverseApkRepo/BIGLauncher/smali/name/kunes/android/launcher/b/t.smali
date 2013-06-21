.class final Lname/kunes/android/launcher/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/b/m;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/b/m;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/t;->a:Lname/kunes/android/launcher/b/m;

    iput-object p2, p0, Lname/kunes/android/launcher/b/t;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p1}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/b/t;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
