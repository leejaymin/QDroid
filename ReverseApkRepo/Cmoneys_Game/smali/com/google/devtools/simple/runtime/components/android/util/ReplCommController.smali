.class public Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;
.super Ljava/lang/Object;
.source "ReplCommController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;
    }
.end annotation


# static fields
.field public static final BLOCKS_EDITOR_PORT:I = 0x270d

.field private static final LOG_TAG:Ljava/lang/String; = "REPL Controller"


# instance fields
.field private blocksEditorReplController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

.field private everStarted:Z

.field private form:Lcom/google/devtools/simple/runtime/components/android/Form;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V
    .locals 2
    .parameter "form"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->everStarted:Z

    .line 54
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

    const/16 v1, 0x270d

    invoke-direct {v0, p0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;-><init>(Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;I)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->blocksEditorReplController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

    .line 60
    return-void
.end method

.method private ShowAlert(Ljava/lang/String;)V
    .locals 2
    .parameter "notice"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;)Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->blocksEditorReplController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;->StopServer()V

    .line 75
    return-void
.end method

.method public startListening(Z)V
    .locals 1
    .parameter "showAlert"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->everStarted:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->blocksEditorReplController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;->ServerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->blocksEditorReplController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$REPLServerController;->StartServer()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->everStarted:Z

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "Listening to App Inventor. Click \"Restart Phone App\" in the Blocks Editor  if you don\'t eventually see your components."

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->ShowAlert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopListening(Z)V
    .locals 0
    .parameter "showAlert"

    .prologue
    .line 68
    return-void
.end method
