.class public final Lname/kunes/android/launcher/b/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/database/Cursor;

.field private static b:Z

.field private static c:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lname/kunes/android/launcher/b/e;->b:Z

    new-instance v0, Lname/kunes/android/launcher/b/o;

    invoke-direct {v0}, Lname/kunes/android/launcher/b/o;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/e;->c:Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lname/kunes/android/launcher/b/e;->b:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 2

    sget-boolean v0, Lname/kunes/android/launcher/b/e;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/b/e;->c:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    sput-object p1, Lname/kunes/android/launcher/b/e;->a:Landroid/database/Cursor;

    invoke-static {p0}, Lname/kunes/android/c/i;->b(Landroid/app/Activity;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/b/p;

    invoke-direct {v1, v0, p0}, Lname/kunes/android/launcher/b/p;-><init>(Landroid/database/Cursor;Landroid/app/Activity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/b/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    sput-object v0, Lname/kunes/android/launcher/b/e;->c:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lname/kunes/android/launcher/b/e;->b:Z

    return-void
.end method
