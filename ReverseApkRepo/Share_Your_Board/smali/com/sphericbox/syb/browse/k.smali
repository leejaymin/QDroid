.class final Lcom/sphericbox/syb/browse/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic z:Lcom/sphericbox/syb/browse/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sphericbox/syb/browse/k;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/browse/k;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sphericbox/syb/browse/k;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->finish()V

    .line 67
    return-void
.end method
