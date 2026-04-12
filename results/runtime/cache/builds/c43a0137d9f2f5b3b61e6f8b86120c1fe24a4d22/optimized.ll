; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6w0dbvh6.cpp"
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
  %a = alloca [100 x i8], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i8 49, ptr %a, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %a, i64 1
  store i8 0, ptr %arrayidx1, align 1, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %smax17 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %1 = add nuw i32 %smax17, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc46, %for.inc45 ]
  %exitcond18 = icmp eq i32 %i.0, %1
  %call49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  br i1 %exitcond18, label %for.end47, label %for.body

for.body:                                         ; preds = %for.cond
  %conv = trunc i64 %call49 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.body ]
  %c.0 = phi i32 [ %c.1, %for.body5 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx6, align 1, !tbaa !5, !invariant.load !10
  %conv7 = sext i8 %2 to i32
  %cmp9 = icmp sgt i8 %2, 52
  %sub8 = shl nsw i32 %conv7, 1
  %mul = add nsw i32 %sub8, 160
  %add = or disjoint i32 %c.0, 48
  %add14 = add nsw i32 %add, %mul
  %conv15 = trunc i32 %add14 to i8
  %conv26 = add i8 %conv15, -10
  %storemerge = select i1 %cmp9, i8 %conv26, i8 %conv15
  %c.1 = zext i1 %cmp9 to i32
  store i8 %storemerge, ptr %arrayidx6, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !11

for.end:                                          ; preds = %for.cond3
  %3 = trunc nuw nsw i32 %c.0 to i8
  %conv30 = or disjoint i8 %3, 48
  %arrayidx32 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %wide.trip.count
  store i8 %conv30, ptr %arrayidx32, align 1, !tbaa !5
  %cmp36.not = icmp eq i32 %c.0, 0
  br i1 %cmp36.not, label %if.else41, label %if.then37

if.then37:                                        ; preds = %for.end
  %add38 = add nuw nsw i32 %smax, 1
  %idxprom39 = zext nneg i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %idxprom39
  store i8 0, ptr %arrayidx40, align 1, !tbaa !5
  br label %for.inc45

if.else41:                                        ; preds = %for.end
  store i8 0, ptr %arrayidx32, align 1, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %if.then37, %if.else41
  %inc46 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end47:                                        ; preds = %for.cond
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %4 = and i64 %call49, 4294967295
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc58, %for.end47
  %indvars.iv19 = phi i64 [ %5, %for.inc58 ], [ %4, %for.end47 ]
  %5 = add nsw i64 %indvars.iv19, -1
  %6 = trunc nuw i64 %indvars.iv19 to i32
  %cmp53 = icmp sgt i32 %6, 0
  br i1 %cmp53, label %for.body54, label %for.end59

for.body54:                                       ; preds = %for.cond52
  %arrayidx56 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %5
  %7 = load i8, ptr %arrayidx56, align 1, !tbaa !5, !invariant.load !10
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !5
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !10
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep, align 8, !tbaa !15, !invariant.load !10
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body54
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc58

if.end.i:                                         ; preds = %for.body54
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %for.inc58

for.inc58:                                        ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  br label %for.cond52, !llvm.loop !26

for.end59:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !6, i64 64, !9, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !12, !13}
