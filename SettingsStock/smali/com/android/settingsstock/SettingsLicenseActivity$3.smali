.class Lcom/android/settingsstock/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SettingsLicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsLicenseActivity$3;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity$3;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    #getter for: Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settingsstock/SettingsLicenseActivity;->access$200(Lcom/android/settingsstock/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity$3;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsLicenseActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity$3;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    #getter for: Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settingsstock/SettingsLicenseActivity;->access$300(Lcom/android/settingsstock/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
