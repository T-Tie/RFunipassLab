; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjrmf8o38.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@__const.main.an = private unnamed_addr constant <{ [11 x i32], [89 x i32] }> <{ [11 x i32] [i32 4, i32 2, i32 8, i32 1, i32 4, i32 7, i32 3, i32 7, i32 0, i32 1, i32 -1], [89 x i32] zeroinitializer }>, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %an = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %an) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %an, ptr noundef nonnull readonly align 16 dereferenceable(400) @__const.main.an, i64 noundef 400, i1 noundef false) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ldexp = call double @ldexp(double noundef 1.000000e+00, i32 %0) #9
  %conv2 = fptosi double %ldexp to i32
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %conv2)
  br label %if.end49

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %0, -30
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.else
  %i.0 = phi i32 [ 0, %if.else ], [ %inc27, %for.inc26 ]
  %exitcond.not = icmp eq i32 %i.0, %sub
  br i1 %exitcond.not, label %for.cond29, label %for.cond6

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %carry.0 = phi i32 [ %div, %for.inc ], [ 0, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %1, -1
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %mul = shl nsw i32 %1, 1
  %add10 = add nsw i32 %mul, %carry.0
  %div = sdiv i32 %add10, 10
  %rem = srem i32 %add10, 10
  store i32 %rem, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %tobool19.not = icmp eq i32 %carry.0, 0
  br i1 %tobool19.not, label %for.inc26, label %if.then20

if.then20:                                        ; preds = %for.end
  store i32 %carry.0, ptr %arrayidx, align 4, !tbaa !5
  %add23 = add nuw i64 %indvars.iv, 1
  %idxprom24 = and i64 %add23, 4294967295
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %idxprom24
  store i32 -1, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end, %if.then20
  %inc27 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond29:                                       ; preds = %for.cond, %for.cond29
  %indvars.iv28 = phi i32 [ %indvars.iv.next29, %for.cond29 ], [ 100, %for.cond ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.cond29 ], [ 100, %for.cond ]
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %indvars.iv25
  %2 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32.not = icmp eq i32 %2, -1
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  %indvars.iv.next29 = add i32 %indvars.iv28, -1
  br i1 %cmp32.not, label %for.cond38.preheader, label %for.cond29, !llvm.loop !13

for.cond38.preheader:                             ; preds = %for.cond29
  %3 = zext i32 %indvars.iv28 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc45
  %indvars.iv30 = phi i64 [ %3, %for.cond38.preheader ], [ %5, %for.inc45 ]
  %4 = trunc nuw i64 %indvars.iv30 to i32
  %cmp39 = icmp sgt i32 %4, 0
  br i1 %cmp39, label %for.inc45, label %if.end49

for.inc45:                                        ; preds = %for.cond38
  %5 = add nsw i64 %indvars.iv30, -1
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  br label %for.cond38, !llvm.loop !14

if.end49:                                         ; preds = %for.cond38, %if.then
  %_ZSt4cout.sink35 = phi ptr [ %call3, %if.then ], [ @_ZSt4cout, %for.cond38 ]
  %vtable.i3 = load ptr, ptr %_ZSt4cout.sink35, align 8, !tbaa !15
  %vbase.offset.ptr.i4 = getelementptr i8, ptr %vtable.i3, i64 -24
  %vbase.offset.i5 = load i64, ptr %vbase.offset.ptr.i4, align 8, !invariant.load !17
  %add.ptr.i6 = getelementptr inbounds i8, ptr %_ZSt4cout.sink35, i64 %vbase.offset.i5
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i6, i8 noundef signext 10)
  %call1.i7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink35, i8 noundef signext %call.i)
  %call.i.i8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i7)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %an) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !18
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #11
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !42
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !15
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !17
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind memory(write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!7, !7, i64 0}
