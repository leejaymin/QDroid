.class final Lccc71/pmw/lib/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/go;->a:Lccc71/pmw/lib/pmw_logcat;

    iput-object p2, p0, Lccc71/pmw/lib/go;->b:Landroid/widget/EditText;

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1049
    iget-object v0, p0, Lccc71/pmw/lib/go;->a:Lccc71/pmw/lib/pmw_logcat;

    iget-object v1, p0, Lccc71/pmw/lib/go;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_logcat;->c(Lccc71/pmw/lib/pmw_logcat;Ljava/lang/String;)V

    .line 1050
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text search:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/go;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->i(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v0, p0, Lccc71/pmw/lib/go;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->o(Lccc71/pmw/lib/pmw_logcat;)V

    .line 1055
    return-void
.end method
