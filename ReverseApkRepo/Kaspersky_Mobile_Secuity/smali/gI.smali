.class public final LgI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgI;-><init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lgf;->c:Z

    .line 184
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lgf;->d:Z

    .line 185
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lgf;->g:Z

    .line 186
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lgf;->e:Z

    .line 187
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)[Z

    move-result-object v1

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lgf;->f:Z

    .line 188
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    invoke-virtual {v0}, Lgf;->a()V

    .line 189
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 168
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 170
    invoke-direct {p0}, LgI;->a()V

    .line 171
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    iget-object v1, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    iget-object v2, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d()[[I

    move-result-object v3

    aget-object v3, v3, v4

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;ILjava/lang/String;)V

    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 174
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 176
    iget-object v0, p0, LgI;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-virtual {v0, v5}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->removeDialog(I)V

    .line 179
    :cond_1
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    return-void
.end method
