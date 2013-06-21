.class public Lcom/google/devtools/simple/runtime/components/android/ReplForm;
.super Lcom/google/devtools/simple/runtime/components/android/Form;
.source "ReplForm.java"


# instance fields
.field private formReplCommController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Form;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 30
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    invoke-direct {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;-><init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->formReplCommController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->onDestroy()V

    .line 48
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->formReplCommController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->destroy()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->formReplCommController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->startListening(Z)V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->onStop()V

    .line 42
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ReplForm;->formReplCommController:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->stopListening(Z)V

    .line 43
    return-void
.end method
