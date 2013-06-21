.class Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

.field final synthetic val$facebookUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;->this$1:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    iput-object p2, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;->val$facebookUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;->this$1:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    iget-object v0, v0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;->val$facebookUiDesc:Lcom/chillingo/crystal/serverdata/UIDescription;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    return-void
.end method
