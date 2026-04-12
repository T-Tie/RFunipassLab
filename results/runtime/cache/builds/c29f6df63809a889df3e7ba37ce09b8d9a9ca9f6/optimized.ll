; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5yexsruf.cpp"
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
  %a = alloca [510 x i32], align 16
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2040, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = phi i32 [ %dec, %for.inc ], [ %.pr, %entry ]
  %i.0 = phi i32 [ %i.1, %for.inc ], [ 0, %entry ]
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %1 = sext i32 %i.0 to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.0, %for.body ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc31
  %indvars.iv18 = phi i64 [ 1, %for.cond3.preheader ], [ %indvars.iv.next19, %for.inc31 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.end33, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond3
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc28
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc28 ], [ %1, %for.cond7.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp8.not.not = icmp sgt i64 %indvars.iv, %indvars.iv18
  br i1 %cmp8.not.not, label %for.body9, label %for.inc31

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %6 = add nsw i64 %indvars.iv, -2
  %arrayidx14 = getelementptr inbounds [510 x i32], ptr %a, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %5, %7
  br i1 %cmp15, label %if.then16, label %for.inc28

if.then16:                                        ; preds = %for.body9
  store i32 %7, ptr %n, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body9, %if.then16
  br label %for.cond7, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond3, !llvm.loop !13

for.end33:                                        ; preds = %for.cond3
  store i32 %smax, ptr %x, align 4, !tbaa !5
  %8 = load i32, ptr %a, align 16, !tbaa !5
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc44, %for.end33
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc44 ], [ 1, %for.end33 ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond26.not, label %for.end46, label %for.body39

for.body39:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !14
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !17
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %9 = load i64, ptr %gep, align 8, !tbaa !18
  %cmp.not.i = icmp eq i64 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body39
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc44

if.end.i:                                         ; preds = %for.body39
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  br label %for.inc44

for.inc44:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %__c.addr.i)
  %arrayidx42 = getelementptr inbounds nuw [510 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %10)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond36, !llvm.loop !29

for.end46:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2040, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{}
!18 = !{!19, !20, i64 16}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = distinct !{!29, !10, !11}
