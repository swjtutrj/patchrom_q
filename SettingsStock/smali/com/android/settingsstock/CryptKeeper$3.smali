.class Lcom/android/settingsstock/CryptKeeper$3;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/CryptKeeper;->passwordEntryInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/CryptKeeper;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeper$3;->this$0:Lcom/android/settingsstock/CryptKeeper;

    iput-object p2, p0, Lcom/android/settingsstock/CryptKeeper$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method
