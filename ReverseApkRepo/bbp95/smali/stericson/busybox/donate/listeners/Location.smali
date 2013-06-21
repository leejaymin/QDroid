.class public Lstericson/busybox/donate/listeners/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lstericson/busybox/donate/interfaces/CallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lstericson/busybox/donate/interfaces/CallBack;"
    }
.end annotation


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lstericson/busybox/donate/listeners/Location;)Lstericson/busybox/donate/Activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public jobCallBack(Lstericson/busybox/donate/domain/Result;I)V
    .locals 4
    .parameter "result"
    .parameter "id"

    .prologue
    .line 80
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getFreeSpace()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getSpace()F

    move-result v0

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lstericson/busybox/donate/domain/Result;->getSpace()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 30
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 32
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, input:Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v2, "Custom Path"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 35
    const-string v2, "Please enter the Path you want to install Busybox, Success is not gauranteed. \n\n This is an advanced option"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 37
    const-string v2, "Ok"

    new-instance v3, Lstericson/busybox/donate/listeners/Location$1;

    invoke-direct {v3, p0, v0, p1}, Lstericson/busybox/donate/listeners/Location$1;-><init>(Lstericson/busybox/donate/listeners/Location;Landroid/widget/EditText;Landroid/widget/AdapterView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    const-string v2, "Cancel"

    new-instance v3, Lstericson/busybox/donate/listeners/Location$2;

    invoke-direct {v3, p0, p1}, Lstericson/busybox/donate/listeners/Location$2;-><init>(Lstericson/busybox/donate/listeners/Location;Landroid/widget/AdapterView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    .end local v0           #input:Landroid/widget/EditText;
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/Activity/MainActivity;->setCustomPath(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1, v5}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    .line 72
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/App;->setPath(Ljava/lang/String;)V

    .line 73
    new-instance v2, Lstericson/busybox/donate/jobs/GetSpace;

    iget-object v3, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v1}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/system"

    :goto_1
    invoke-direct {v2, v3, v1, p0}, Lstericson/busybox/donate/jobs/GetSpace;-><init>(Lstericson/busybox/donate/Activity/MainActivity;Ljava/lang/String;Lstericson/busybox/donate/interfaces/CallBack;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lstericson/busybox/donate/jobs/GetSpace;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lstericson/busybox/donate/listeners/Location;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v1}, Lstericson/busybox/donate/Activity/MainActivity;->getCustomPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
