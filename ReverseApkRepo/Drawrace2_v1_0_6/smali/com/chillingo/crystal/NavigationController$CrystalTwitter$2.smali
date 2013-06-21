.class Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

.field final synthetic val$twitterUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/NavigationController$CrystalTwitter;Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;->this$1:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    iput-object p2, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;->val$twitterUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;->this$1:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    iget-object v0, v0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;->val$twitterUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    return-void
.end method
