.class public final LdU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Let;


# instance fields
.field private synthetic a:Lcom/kms/gui/ReportsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/ReportsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-static {v0}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-static {v0, p2}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;I)I

    .line 155
    iget-object v0, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    iget-object v0, v0, Lcom/kms/gui/ReportsActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    iget-object v1, v1, Lcom/kms/gui/ReportsActivity;->b:[Ljava/lang/CharSequence;

    iget-object v2, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-static {v2}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-static {}, Lcom/kms/gui/ReportsActivity;->c()[I

    move-result-object v1

    iget-object v2, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-static {v2}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/gui/ReportsActivity;->a(Lcom/kms/gui/ReportsActivity;Ljava/util/Vector;)Ljava/util/Vector;

    .line 158
    iget-object v0, p0, LdU;->a:Lcom/kms/gui/ReportsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/ReportsActivity;->b()V

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
