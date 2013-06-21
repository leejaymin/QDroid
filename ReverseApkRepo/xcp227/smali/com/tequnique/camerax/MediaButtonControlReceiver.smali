.class public Lcom/tequnique/camerax/MediaButtonControlReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Lcom/tequnique/camerax/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/MediaButtonControlReceiver;->a:Lcom/tequnique/camerax/bu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    sget-object v1, Lcom/tequnique/camerax/MediaButtonControlReceiver;->a:Lcom/tequnique/camerax/bu;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tequnique/camerax/MediaButtonControlReceiver;->a:Lcom/tequnique/camerax/bu;

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/bu;->a(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method
