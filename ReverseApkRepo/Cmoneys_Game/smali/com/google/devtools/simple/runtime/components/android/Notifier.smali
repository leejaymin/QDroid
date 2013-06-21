.class public final Lcom/google/devtools/simple/runtime/components/android/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MISC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Component that creates alert messages."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/Notifier;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    .line 82
    const-string v1, "Notifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One button alert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Notifier$1;

    invoke-direct {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Notifier$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method

.method private textInputAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "title"

    .prologue
    .line 162
    const-string v2, "Notifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text input alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 164
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, input:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 171
    const-string v2, "OK"

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Notifier$4;

    invoke-direct {v3, p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Notifier$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method

.method private twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"

    .prologue
    .line 112
    const-string v1, "Notifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShowChooseDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;

    invoke-direct {v1, p0, p3}, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Notifier$3;

    invoke-direct {v1, p0, p4}, Lcom/google/devtools/simple/runtime/components/android/Notifier$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 136
    return-void
.end method


# virtual methods
.method public AfterChoosing(Ljava/lang/String;)V
    .locals 3
    .parameter "choice"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "choice As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 146
    const-string v0, "AfterChoosing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public AfterTextInput(Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "response As String"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 187
    const-string v0, "AfterTextInput"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public Initialize()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "Notifier"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public LogError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 211
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public LogInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 231
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public LogWarning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 221
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .locals 2
    .parameter "notice"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Notifier$5;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Notifier$5;-><init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "button1Text"
    .parameter "button2Text"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->oneButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public ShowTextDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "title"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->textInputAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
