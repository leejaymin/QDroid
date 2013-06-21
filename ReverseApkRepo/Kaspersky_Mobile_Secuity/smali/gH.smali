.class public final LgH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgH;-><init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/privacyprotection/gui/PPSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 149
    if-ltz p2, :cond_0

    iget-object v0, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 151
    iget-object v0, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0, p2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;I)I

    .line 152
    iget-object v0, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    invoke-static {}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->c()[I

    move-result-object v1

    iget-object v2, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)I

    move-result v2

    aget v1, v1, v2

    int-to-long v1, v1

    iput-wide v1, v0, Lgf;->i:J

    .line 153
    iget-object v0, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->b(Lcom/kms/privacyprotection/gui/PPSettingsActivity;)Lgf;

    move-result-object v0

    invoke-virtual {v0}, Lgf;->a()V

    .line 154
    iget-object v0, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    iget-object v1, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    iget-object v2, p0, LgH;->a:Lcom/kms/privacyprotection/gui/PPSettingsActivity;

    invoke-static {}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->d()[[I

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/privacyprotection/gui/PPSettingsActivity;->a(Lcom/kms/privacyprotection/gui/PPSettingsActivity;ILjava/lang/String;)V

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    :cond_0
    return-void
.end method
