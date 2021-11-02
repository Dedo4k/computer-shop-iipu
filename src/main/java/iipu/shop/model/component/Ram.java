package iipu.shop.model.component;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "ram")
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
public class Ram extends Component{

    @Column(name = "capacity", nullable = false)
    private int capacity;

    @Column(name = "type", nullable = false)
    private String type;

    @Column(name = "freq", nullable = false)
    private double freq;
}
