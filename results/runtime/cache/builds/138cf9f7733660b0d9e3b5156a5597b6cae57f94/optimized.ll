; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2j45x9mu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str1 = alloca [5000 x i8], align 16
  %str2 = alloca [5000 x i8], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 captures(none) dereferenceable(5000) %str1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef align 16 %str2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %len) #5
  store i32 0, ptr %len, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(5000) %str1, i64 noundef 5000)
  %call2 = call i64 @strlen(ptr noundef %str1) #6
  %conv = trunc i64 %call2 to i32
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %for.inc32

if.end:                                           ; preds = %for.body
  %2 = load i32, ptr %len, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %len, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %conv3, 32
  br i1 %cmp8, label %if.then9, label %for.inc32

if.then9:                                         ; preds = %if.end
  %sub = sub nsw i32 %conv, 1
  %sub10 = sub nsw i32 %sub, %0
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom11
  store i8 32, ptr %arrayidx12, align 1, !tbaa !9
  %sub13 = sub nsw i32 %0, 1
  %sub14 = sub nsw i32 %0, %inc
  %add = add nsw i32 %sub14, 1
  %sub16 = sub nsw i32 %sub, %sub13
  store i32 %sub16, ptr %j, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then9
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %sub19 = sub nsw i32 %sub, %add
  %cmp20 = icmp sle i32 %3, %sub19
  br i1 %cmp20, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond17
  %add22 = add nsw i32 %3, 1
  %add23 = add nsw i32 %add22, %sub13
  %add24 = add nsw i32 %add23, %add
  %sub25 = sub nsw i32 %add24, %conv
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom26
  %4 = load i8, ptr %arrayidx27, align 1, !tbaa !9, !invariant.load !10
  %idxprom28 = sext i32 %3 to i64
  %arrayidx29 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom28
  store i8 %4, ptr %arrayidx29, align 1, !tbaa !9
  store i32 %add22, ptr %j, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !11

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %len, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body, %if.end, %for.end
  %inc33 = add nsw i32 %0, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end34:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc44, %for.end34
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %len, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %5, %6
  br i1 %cmp36, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond35
  %sub38 = sub nsw i32 %conv, %6
  %add39 = add nsw i32 %sub38, %5
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom40
  %7 = load i8, ptr %arrayidx41, align 1, !tbaa !9
  %idxprom42 = sext i32 %5 to i64
  %arrayidx43 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom42
  store i8 %7, ptr %arrayidx43, align 1, !tbaa !9
  %inc45 = add nsw i32 %5, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !15

for.end46:                                        ; preds = %for.cond35
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc53, %for.end46
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %8, %conv
  br i1 %cmp48, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond47
  %idxprom50 = sext i32 %8 to i64
  %arrayidx51 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom50
  %9 = load i8, ptr %arrayidx51, align 1, !tbaa !9
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %9)
  %inc54 = add nsw i32 %8, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !16

for.end55:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %len) #7
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef %str2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef %str1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
