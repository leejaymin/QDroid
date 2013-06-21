.class Lcom/redlynx/drawrace2/DrawRace2Activity$23;
.super Ljava/lang/Object;
.source "DrawRace2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2Activity;->onResult(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$23;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$23;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    #calls: Lcom/redlynx/drawrace2/DrawRace2Activity;->createGameGLView()V
    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->access$100(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    .line 558
    return-void
.end method
