.class final Lccc71/bmw/lib/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ds;->a:Lccc71/bmw/lib/bmw_status;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1084
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    iget-object v1, p0, Lccc71/bmw/lib/ds;->a:Lccc71/bmw/lib/bmw_status;

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_status;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/bmw/lib/ds;->a:Lccc71/bmw/lib/bmw_status;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1092
    iget-object v1, p0, Lccc71/bmw/lib/ds;->a:Lccc71/bmw/lib/bmw_status;

    sget v2, Lccc71/bmw/lib/g;->cx:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1093
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1094
    const-string v2, "OK"

    .line 1095
    new-instance v3, Lccc71/bmw/lib/dt;

    invoke-direct {v3, p0}, Lccc71/bmw/lib/dt;-><init>(Lccc71/bmw/lib/ds;)V

    .line 1094
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
