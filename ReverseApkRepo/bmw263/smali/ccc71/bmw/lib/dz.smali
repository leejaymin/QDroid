.class final Lccc71/bmw/lib/dz;
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
    iput-object p1, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->g()V

    .line 1238
    iget-object v0, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->a(Lccc71/bmw/lib/bmw_status;)V

    .line 1239
    iget-object v0, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0, v3}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1240
    iget-object v0, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    .line 1242
    iget-object v0, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    iget-object v1, p0, Lccc71/bmw/lib/dz;->a:Lccc71/bmw/lib/bmw_status;

    sget v2, Lccc71/bmw/lib/g;->cK:I

    invoke-virtual {v1, v2}, Lccc71/bmw/lib/bmw_status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1244
    return-void
.end method
