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
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef align 16 %str1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef align 16 %str2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef align 16 %str1, i64 noundef 5000)
  %call2 = call i64 @strlen(ptr noundef %str1) #6
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %len.0 = phi i32 [ 0, %entry ], [ %len.2, %for.inc32 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv3 = sext i8 %0 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %for.inc32

if.end:                                           ; preds = %for.body
  %inc = add nsw i32 %len.0, 1
  %cmp8 = icmp eq i32 %conv3, 32
  br i1 %cmp8, label %if.then9, label %for.inc32

if.then9:                                         ; preds = %if.end
  %sub = add i32 %conv, -1
  %.neg1 = sub i32 0, %i.0
  %sub10 = add i32 %sub, %.neg1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom11
  store i8 32, ptr %arrayidx12, align 1, !tbaa !5
  %sub13 = sub nsw i32 %i.0, 1
  %.neg2 = sub i32 0, %inc
  %sub14 = add i32 %i.0, 1
  %add = add i32 %sub14, %.neg2
  %.neg3 = sub i32 0, %sub13
  %sub16 = add i32 %sub, %.neg3
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then9
  %j.0 = phi i32 [ %sub16, %if.then9 ], [ %add22, %for.inc ]
  %.neg4 = sub i32 0, %add
  %sub19 = add i32 %sub, %.neg4
  %cmp20 = icmp sle i32 %j.0, %sub19
  br i1 %cmp20, label %for.inc, label %for.inc32

for.inc:                                          ; preds = %for.cond17
  %add22 = add nsw i32 %j.0, 1
  %add23 = add nsw i32 %add22, %sub13
  %add24 = add nsw i32 %add23, %add
  %.neg5 = sub i32 0, %conv
  %sub25 = add i32 %add24, %.neg5
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom26
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %idxprom28 = sext i32 %j.0 to i64
  %arrayidx29 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom28
  store i8 %1, ptr %arrayidx29, align 1, !tbaa !5
  br label %for.cond17, !llvm.loop !8

for.inc32:                                        ; preds = %for.body, %if.end, %for.cond17
  %len.2 = phi i32 [ %inc, %if.end ], [ 0, %for.cond17 ], [ %len.0, %for.body ]
  %inc33 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end34:                                        ; preds = %for.cond
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc44, %for.end34
  %i.1 = phi i32 [ 0, %for.end34 ], [ %inc45, %for.inc44 ]
  %cmp36 = icmp slt i32 %i.1, %len.0
  br i1 %cmp36, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond35
  %.neg = sub i32 0, %len.0
  %sub38 = add i32 %.neg, %conv
  %add39 = add nsw i32 %sub38, %i.1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom40
  %2 = load i8, ptr %arrayidx41, align 1, !tbaa !5
  %idxprom42 = sext i32 %i.1 to i64
  %arrayidx43 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom42
  store i8 %2, ptr %arrayidx43, align 1, !tbaa !5
  %inc45 = add nsw i32 %i.1, 1
  br label %for.cond35, !llvm.loop !12

for.end46:                                        ; preds = %for.cond35
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc53, %for.end46
  %i.2 = phi i32 [ 0, %for.end46 ], [ %inc54, %for.inc53 ]
  %cmp48 = icmp slt i32 %i.2, %conv
  br i1 %cmp48, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond47
  %idxprom50 = sext i32 %i.2 to i64
  %arrayidx51 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom50
  %3 = load i8, ptr %arrayidx51, align 1, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  %inc54 = add nsw i32 %i.2, 1
  br label %for.cond47, !llvm.loop !13

for.end55:                                        ; preds = %for.cond47
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
