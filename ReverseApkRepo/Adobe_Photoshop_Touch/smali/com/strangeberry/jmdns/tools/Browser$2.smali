.class Lcom/strangeberry/jmdns/tools/Browser$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/strangeberry/jmdns/tools/Browser;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/strangeberry/jmdns/tools/Browser;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser$2;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    iput-object p2, p0, Lcom/strangeberry/jmdns/tools/Browser$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$2;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    iget-object v0, v0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/swing/DefaultListModel;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method
