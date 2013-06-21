.class Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;
.super Ljava/lang/Thread;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn/esse/bodysymbol/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;


# direct methods
.method private constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;-><init>(Lvn/esse/bodysymbol/HomeActivity;)V

    return-void
.end method

.method static synthetic access$1(Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;)Lvn/esse/bodysymbol/HomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 1400
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    new-instance v1, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask$1;

    invoke-direct {v1, p0}, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask$1;-><init>(Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;)V

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1411
    return-void
.end method
