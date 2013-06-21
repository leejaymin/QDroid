.class public Lcom/google/devtools/simple/runtime/components/android/PhoneCall;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.CALL_PHONE"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->context:Landroid/content/Context;

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public MakePhoneCall()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 80
    return-void
.end method
