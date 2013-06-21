.class public Lti/modules/titanium/ui/PickerRowProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerRowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "PickerRowProxy"


# instance fields
.field private rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 26
    const-string v0, "[PickerRow]"

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 61
    const-string v0, "PickerRowProxy"

    const-string v1, "PickerRow does not support child controls"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 72
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerRow;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerRow;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerRowProxy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    const-string v1, "title"

    .line 78
    const-string v0, "title"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "title"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 66
    const-string v0, "PickerRowProxy"

    const-string v1, "PickerRow does not support child controls"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setRowListener(Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    .line 56
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    iput-object p1, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->rowListener:Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;

    invoke-interface {v0, p0}, Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;->rowChanged(Lti/modules/titanium/ui/PickerRowProxy;)V

    .line 45
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxy;->title:Ljava/lang/String;

    return-object v0
.end method
