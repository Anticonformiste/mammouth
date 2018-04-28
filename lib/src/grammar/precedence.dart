//*-- Precedence
/**
 * Precedence defines the priority in which tokens are treated by parser.
 */
class Precedence implements Comparable<Precedence> {
    final int _ordinal;

    const Precedence(this._ordinal);

    /**
     * Returns the ordinal of this precedence.
     */
    int get ordinal {
        return this._ordinal;
    }

    @override
    int compareTo(Precedence other) {
        return this.ordinal - other.ordinal;
    }

    bool operator <(Precedence other) {
        return this.compareTo(other) < 0;
    }

    bool operator <=(Precedence other) {
        int comp = this.compareTo(other);
        return comp < 0 || comp == 0;
    }

    bool operator >(Precedence other) {
        return this.compareTo(other) > 0;
    }

    bool operator >=(Precedence other) {
        int comp = this.compareTo(other);
        return comp > 1 || comp == 0;
    }

    static const Precedence Zero = const Precedence(0);
    static const Precedence Assign = const Precedence(1);
    static const Precedence LogicalOr = const Precedence(2);
    static const Precedence LogicalAnd = const Precedence(3);
    static const Precedence BitwiseOr = const Precedence(4);
    static const Precedence BitwiseAnd = const Precedence(5);
    static const Precedence BitwiseXor = const Precedence(6);
    static const Precedence Equality = const Precedence(7);
    static const Precedence Relational = const Precedence(8);
    static const Precedence Shift = const Precedence(9);
    static const Precedence Additive = const Precedence(10);
    static const Precedence Multiplicative = const Precedence(11); 

    static const List<Precedence> values = const <Precedence>[
        Zero,
        Assign,
        LogicalOr,
        LogicalAnd,
        BitwiseOr,
        BitwiseAnd,
        BitwiseXor,
        Equality,
        Relational,
        Shift,
        Additive,
        Multiplicative
    ];
}
