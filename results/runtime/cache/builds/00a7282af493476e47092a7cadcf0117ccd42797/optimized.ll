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
  %__c.addr.i = alloca i8, align 1
  %str1 = alloca [5000 x i8], align 16
  %str2 = alloca [5000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 captures(none) dereferenceable(5000) %str1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 %str2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(5000) %str1, i64 noundef 5000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str1) #7
  %conv = trunc i64 %call2 to i32
  %sub = add nsw i32 %conv, -1
  %0 = sext i32 %sub to i64
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc32 ], [ 0, %entry ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc32 ], [ %conv, %entry ]
  %len.0 = phi i32 [ %len.2, %for.inc32 ], [ 0, %entry ]
  %1 = sext i32 %indvars.iv to i64
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body

for.cond35.preheader:                             ; preds = %for.cond
  %sub38 = sub i32 %conv, %len.0
  %2 = sext i32 %sub38 to i64
  %smax36 = call i32 @llvm.smax.i32(i32 %len.0, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  br label %for.cond35

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5000 x i8], ptr %str1, i64 0, i64 %indvars.iv27
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %for.inc32, label %if.end

if.end:                                           ; preds = %for.body
  %inc = add nsw i32 %len.0, 1
  %cmp8 = icmp eq i8 %3, 32
  br i1 %cmp8, label %if.then9, label %for.inc32

if.then9:                                         ; preds = %if.end
  %4 = sub nsw i64 %0, %indvars.iv27
  %arrayidx12 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %4
  store i8 32, ptr %arrayidx12, align 1, !tbaa !5
  %5 = trunc nuw nsw i64 %indvars.iv27 to i32
  %sub14 = sub nsw i32 %5, %inc
  %add = add nsw i32 %sub14, 1
  %sub19 = sub nsw i32 %sub, %add
  %invariant.op = add i32 %add, %5
  %add24.reass = sub i32 %invariant.op, %conv
  %6 = sext i32 %sub19 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then9
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc ], [ %1, %if.then9 ]
  %cmp20.not = icmp sgt i64 %indvars.iv24, %6
  br i1 %cmp20.not, label %for.inc32, label %for.inc

for.inc:                                          ; preds = %for.cond17
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %7 = trunc nsw i64 %indvars.iv24 to i32
  %sub25 = add i32 %add24.reass, %7
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom26
  %8 = load i8, ptr %arrayidx27, align 1, !tbaa !5, !invariant.load !8
  %arrayidx29 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv24
  store i8 %8, ptr %arrayidx29, align 1, !tbaa !5
  br label %for.cond17, !llvm.loop !9

for.inc32:                                        ; preds = %for.cond17, %for.body, %if.end
  %len.2 = phi i32 [ %inc, %if.end ], [ %len.0, %for.body ], [ 0, %for.cond17 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br label %for.cond, !llvm.loop !12

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc44
  %indvars.iv31 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next32, %for.inc44 ]
  %exitcond38.not = icmp eq i64 %indvars.iv31, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond47.preheader, label %for.inc44

for.cond47.preheader:                             ; preds = %for.cond35
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond47

for.inc44:                                        ; preds = %for.cond35
  %9 = add nsw i64 %indvars.iv31, %2
  %arrayidx41 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %9
  %10 = load i8, ptr %arrayidx41, align 1, !tbaa !5, !invariant.load !8
  %arrayidx43 = getelementptr inbounds nuw [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv31
  store i8 %10, ptr %arrayidx43, align 1, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond35, !llvm.loop !13

for.cond47:                                       ; preds = %for.cond47.preheader, %for.inc53
  %indvars.iv39 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next40, %for.inc53 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond43.not, label %for.end55, label %for.body49

for.body49:                                       ; preds = %for.cond47
  %arrayidx51 = getelementptr inbounds nuw [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv39
  %11 = load i8, ptr %arrayidx51, align 1, !tbaa !5, !invariant.load !8
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %11, ptr %__c.addr.i, align 1, !tbaa !5
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %12 = load i64, ptr %gep, align 8, !tbaa !14, !invariant.load !8
  %cmp.not.i = icmp eq i64 %12, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body49
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc53

if.end.i:                                         ; preds = %for.body49
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  br label %for.inc53

for.inc53:                                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond47, !llvm.loop !26

for.end55:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef nonnull %str2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef nonnull captures(none) %str1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !6, i64 64, !22, i64 192, !23, i64 200, !24, i64 208}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"int", !6, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!26 = distinct !{!26, !10, !11}
