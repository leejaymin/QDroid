.class final Lname/kunes/android/launcher/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/b/m;

.field private final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/b/m;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/s;->a:Lname/kunes/android/launcher/b/m;

    iput-object p2, p0, Lname/kunes/android/launcher/b/s;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 3

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p1}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    iget-object v1, p0, Lname/kunes/android/launcher/b/s;->b:Ljava/lang/StringBuilder;

    const-string v2, "label"

    invoke-virtual {v0, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lname/kunes/android/launcher/b/s;->b:Ljava/lang/StringBuilder;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
