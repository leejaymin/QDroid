.class final Lcom/tequnique/camerax/bi;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/bi;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/tequnique/camerax/bi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [[B

    iget-object v0, p0, Lcom/tequnique/camerax/bi;->a:Lcom/tequnique/camerax/CameraProActivity;

    iget-object v1, p0, Lcom/tequnique/camerax/bi;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/String;[B)Z

    const/4 v0, 0x0

    return-object v0
.end method
