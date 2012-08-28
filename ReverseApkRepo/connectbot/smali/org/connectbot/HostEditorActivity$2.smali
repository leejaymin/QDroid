.class Lorg/connectbot/HostEditorActivity$2;
.super Ljava/lang/Object;
.source "HostEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostEditorActivity;

.field private final synthetic val$charsetPref:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lorg/connectbot/HostEditorActivity;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostEditorActivity$2;->this$0:Lorg/connectbot/HostEditorActivity;

    iput-object p2, p0, Lorg/connectbot/HostEditorActivity$2;->val$charsetPref:Landroid/preference/ListPreference;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/connectbot/HostEditorActivity$2;->this$0:Lorg/connectbot/HostEditorActivity;

    iget-object v1, p0, Lorg/connectbot/HostEditorActivity$2;->val$charsetPref:Landroid/preference/ListPreference;

    #calls: Lorg/connectbot/HostEditorActivity;->initCharsetPref(Landroid/preference/ListPreference;)V
    invoke-static {v0, v1}, Lorg/connectbot/HostEditorActivity;->access$1(Lorg/connectbot/HostEditorActivity;Landroid/preference/ListPreference;)V

    .line 296
    return-void
.end method
