.class Lorg/mozilla/javascript/BeanProperty;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# instance fields
.field getter:Lorg/mozilla/javascript/MemberBox;

.field setter:Lorg/mozilla/javascript/MemberBox;

.field setters:Lorg/mozilla/javascript/NativeJavaMethod;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/NativeJavaMethod;)V
    .locals 0
    .parameter "getter"
    .parameter "setter"
    .parameter "setters"

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    .line 904
    iput-object p2, p0, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    .line 905
    iput-object p3, p0, Lorg/mozilla/javascript/BeanProperty;->setters:Lorg/mozilla/javascript/NativeJavaMethod;

    .line 906
    return-void
.end method
