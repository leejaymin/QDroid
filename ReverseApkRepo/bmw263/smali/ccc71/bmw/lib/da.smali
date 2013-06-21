.class final Lccc71/bmw/lib/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/da;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1412
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1413
    iget-object v1, p0, Lccc71/bmw/lib/da;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/lib/bmw_settings;->c:I

    invoke-static {v1, v2, v0}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/content/Context;II)V

    .line 1414
    const/4 v0, 0x1

    return v0
.end method
