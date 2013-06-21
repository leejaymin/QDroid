.class final Lname/kunes/android/launcher/b/a;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/b/g;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/b/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/a;->a:Lname/kunes/android/launcher/b/g;

    iput-object p2, p0, Lname/kunes/android/launcher/b/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lname/kunes/android/launcher/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lname/kunes/android/launcher/b/m;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
