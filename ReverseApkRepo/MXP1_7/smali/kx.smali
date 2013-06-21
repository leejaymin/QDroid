.class public Lkx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V
    .locals 0

    iput-object p1, p0, Lkx;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityVideoList;Lkx;)V
    .locals 0

    invoke-direct {p0, p1}, Lkx;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "omxdecoder"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
